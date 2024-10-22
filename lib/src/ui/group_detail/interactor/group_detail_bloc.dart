import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/model/bing_search_image_data.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/core/resource.dart';
import 'package:keepup/src/enums/frequency_interval_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/group_detail/mappers/delete_group_state_mapper.dart';
import 'package:keepup/src/ui/group_detail/mappers/get_group_state_mapper.dart';
import 'package:keepup/src/ui/group_detail/mappers/update_group_state_mapper.dart';
import 'package:keepup/src/ui/group_detail/usecases/get_group_use_case.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';
import 'package:keepup/src/use_cases/delete_group_use_case.dart';
import 'package:keepup/src/use_cases/update_group_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_from_url_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_use_case.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'group_detail_bloc.freezed.dart';
part 'group_detail_event.dart';
part 'group_detail_state.dart';

class GroupDetailBloc extends Bloc<GroupDetailEvent, GroupDetailState> {
  final nameController = TextEditingController();

  final SupabaseRepository _supabaseRepository;
  final UploadAvatarUseCase _uploadAvatarUseCase;
  final UploadAvatarFromUrlUseCase _uploadAvatarFromUrlUseCase;
  final GetGroupUseCase _getGroupUseCase;
  final GetGroupStateMapper _getGroupStateMapper;
  final UpdateGroupUseCase _updateGroupUseCase;
  final UpdateGroupStateMapper _updateGroupStateMapper;
  final DeleteGroupUseCase _deleteGroupUseCase;
  final DeleteGroupStateMapper _deleteGroupStateMapper;

  GroupDetailBloc(
    this._supabaseRepository,
    this._uploadAvatarUseCase,
    this._uploadAvatarFromUrlUseCase,
    this._getGroupUseCase,
    this._getGroupStateMapper,
    this._updateGroupUseCase,
    this._updateGroupStateMapper,
    this._deleteGroupUseCase,
    this._deleteGroupStateMapper,
  ) : super(const GroupDetailState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedAvatar>(_onChangedAvatar);
    on<_OnChangedAvatarFromUrl>(_onChangedAvatarFromUrl);
    on<_OnNameChanged>(_onNameChanged);
    on<_OnDescriptionChanged>(_onDescriptionChanged);
    on<_OnFrequencyIntervalChanged>(_onFrequencyIntervalChanged);
    on<_OnChangedContacts>(_onChangedContacts);
    on<_OnOpenedSeeAll>((event, emit) => emit(state.copyWith(openedSeeAll: true)));
    on<_OnDeleteGroup>(_onDeleteGroup);
    on<_OnCategoryChanged>(_onCategoryChanged);
  }

  FutureOr<void> _initial(_Initial event, Emitter<GroupDetailState> emit) async {
    final arguments = Get.arguments;
    final String groupId = arguments is Group
        ? arguments.id
        : arguments is String
            ? arguments
            : '';
    if (groupId.isEmpty) {
      emit(state.copyWith(
        pageState: PageState.success,
        pageCommand: PageCommandNavigation.pop(
          result: PopResult(
            status: false,
            resultFromPage: AppPages.groupDetail,
            data: LocaleKey.theGroupDoesNotExist.tr,
          ),
        ),
      ));
    } else {
      // Get categories
      final Resource<List<Category>> resource = await _supabaseRepository.getCategories();
      final List<Category> categories = resource.data ?? [];
      emit(state.copyWith(categories: categories));

      // Get group by group id
      final result = await _getGroupUseCase.run(groupId);
      emit(_getGroupStateMapper.mapResultToState(state, result));

      // Map contacts to state
      nameController.text = state.request.name;
      final List<String> contactIds = state.request.contacts;
      final List<Contact> contacts = await _supabaseRepository.getDBContactByIds(contactIds);
      emit(state.copyWith(contacts: contacts));

      // Map selected category to state
      final Category selectedCategory =
          categories.where((e) => e.id == state.request.categoryId).firstOrNull ??
              const Category(id: '', name: 'None');
      emit(state.copyWith(selectedCategory: selectedCategory));
    }
  }

  FutureOr<void> _onChangedAvatar(_OnChangedAvatar event, Emitter<GroupDetailState> emit) async {
    if (state.isLoading) return;
    final File avatarFile = event.file;
    emit(state.copyWith(isLoading: true, avatarFile: avatarFile));
    final DataResult<String> uploadAvatarResult = await _uploadAvatarUseCase.run(avatarFile);
    final String avatarUrl = uploadAvatarResult.valueOrNull ?? '';
    if (uploadAvatarResult.isValue) {
      GroupRequest request = state.request.copyWith(avatar: avatarUrl);
      final updateResult = await _updateGroupUseCase.run(request);
      GroupDetailState newState = _updateGroupStateMapper.mapResultToState(state, updateResult);
      if (updateResult.isValue) {
        newState = newState.copyWith(
          pageCommand: PageCommandMessage.showSuccess(LocaleKey.avatarUpdatedSuccessfully.tr),
        );
      }
      emit(newState);
    } else {
      final PageError pageError = uploadAvatarResult.asError!.error;
      return emit(state.copyWith(
        isLoading: false,
        avatarFile: null,
        pageCommand: pageError.toPageCommand(),
      ));
    }
  }

  FutureOr<void> _onChangedAvatarFromUrl(
    _OnChangedAvatarFromUrl event,
    Emitter<GroupDetailState> emit,
  ) async {
    final String newAvatar = event.data.contentUrl;
    emit(state.copyWith(isLoading: true));
    DataResult<String> uploadAvatarResult = await _uploadAvatarFromUrlUseCase.run(newAvatar);
    final String avatarUrl = uploadAvatarResult.valueOrNull ?? '';
    if (uploadAvatarResult.isValue) {
      GroupRequest request = state.request.copyWith(avatar: avatarUrl);
      final updateResult = await _updateGroupUseCase.run(request);
      GroupDetailState newState = _updateGroupStateMapper.mapResultToState(state, updateResult);
      if (updateResult.isValue) {
        newState = newState.copyWith(
          pageCommand: PageCommandMessage.showSuccess(LocaleKey.avatarUpdatedSuccessfully.tr),
        );
      }
      emit(newState);
    } else {
      final PageError pageError = uploadAvatarResult.asError!.error;
      return emit(state.copyWith(
        isLoading: false,
        avatarFile: null,
        pageCommand: pageError.toPageCommand(),
      ));
    }
  }

  FutureOr<void> _onNameChanged(_OnNameChanged event, Emitter<GroupDetailState> emit) {
    final GroupRequest request = state.request.copyWith(name: event.value);
    return _updateGroup(request, emit);
  }

  FutureOr<void> _onDescriptionChanged(
    _OnDescriptionChanged event,
    Emitter<GroupDetailState> emit,
  ) {
    final GroupRequest request = state.request.copyWith(description: event.value);
    return _updateGroup(request, emit);
  }

  FutureOr<void> _onFrequencyIntervalChanged(
    _OnFrequencyIntervalChanged event,
    Emitter<GroupDetailState> emit,
  ) async {
    final GroupRequest request = state.request.copyWith(
      frequencyInterval: event.frequencyIntervalType,
    );
    if (state.isLoading) return;
    final isSuccess = await _updateGroup(request, emit);
    if (isSuccess) {
      emit(state.copyWith(isLoading: true));
      final List<ContactRequest> contactRequests = state.contacts.map((e) {
        final contactRequest = ContactRequest.fromJson(e.toJson());
        return contactRequest.copyWith(expiration: event.frequencyIntervalType.toExpirationDate());
      }).toList();
      if (contactRequests.isNotEmpty) {
        final resource = await _supabaseRepository.updateContacts(contactRequests);
        final List<Contact> contacts = resource.data ?? [];
        if (resource.isSuccess && contacts.isNotEmpty) {
          emit(state.copyWith(contacts: contacts));
        }
      }
      emit(state.copyWith(
        isLoading: false,
        pageCommand: PageCommandMessage.showSuccess(LocaleKey.remindUpdatedSuccessfully.tr),
      ));
    }
  }

  FutureOr<bool> _updateGroup(GroupRequest request, Emitter<GroupDetailState> emit) async {
    if (state.isLoading) return false;
    emit(state.copyWith(isLoading: true, request: request));
    final result = await _updateGroupUseCase.run(request);
    emit(_updateGroupStateMapper.mapResultToState(state, result));
    return result.isValue;
  }

  FutureOr<void> _onChangedContacts(_, Emitter<GroupDetailState> emit) async {
    final Group? group = state.groupDetail;
    if (group == null || state.isLoading) return;
    emit(state.copyWith(isLoading: true));
    final result = await _getGroupUseCase.run(group.id);
    emit(_getGroupStateMapper.mapResultToState(state, result));
    if (result.isValue) {
      final List<String> contactIds = state.request.contacts;
      final List<Contact> contacts = await _supabaseRepository.getDBContactByIds(contactIds);
      emit(state.copyWith(isLoading: false, contacts: contacts));
    } else {
      emit(state.copyWith(isLoading: false));
    }
  }

  FutureOr<void> _onDeleteGroup(_OnDeleteGroup event, Emitter<GroupDetailState> emit) async {
    final Group? group = state.groupDetail;
    if (group == null || state.isLoading) return;
    emit(state.copyWith(isLoading: true));
    final VoidResult result = await _deleteGroupUseCase.run(group);
    emit(_deleteGroupStateMapper.mapResultToState(state, result));
  }

  FutureOr<void> _onCategoryChanged(
    _OnCategoryChanged event,
    Emitter<GroupDetailState> emit,
  ) async {
    if (state.isLoading) return;
    final GroupRequest request = state.request.copyWith(
      categoryId: event.category.id,
    );
    final isSuccess = await _updateGroup(request, emit);
    if (isSuccess) {
      emit(state.copyWith(
        selectedCategory: event.category,
        pageCommand: PageCommandMessage.showSuccess(LocaleKey.categoryUpdatedSuccessfully.tr),
      ));
    }
  }

  Future<int> getDaysOfFrequency(String groupId) async {
    if (groupId.isNotEmpty) {
      final Group? group = await _supabaseRepository.getDBGroup(groupId);
      if (group != null) {
        return group.frequencyInterval.days;
      }
    }
    return 0;
  }
}
