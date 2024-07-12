import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
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
import 'package:keepup/src/use_cases/upload_avatar_use_case.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'group_detail_bloc.freezed.dart';
part 'group_detail_event.dart';
part 'group_detail_state.dart';

class GroupDetailBloc extends Bloc<GroupDetailEvent, GroupDetailState> {
  final nameController = TextEditingController();

  final SupabaseRepository _supabaseRepository;
  final UploadAvatarUseCase _uploadAvatarUseCase;
  final GetGroupUseCase _getGroupUseCase;
  final GetGroupStateMapper _getGroupStateMapper;
  final UpdateGroupUseCase _updateGroupUseCase;
  final UpdateGroupStateMapper _updateGroupStateMapper;
  final DeleteGroupUseCase _deleteGroupUseCase;
  final DeleteGroupStateMapper _deleteGroupStateMapper;

  GroupDetailBloc(
    this._supabaseRepository,
    this._uploadAvatarUseCase,
    this._getGroupUseCase,
    this._getGroupStateMapper,
    this._updateGroupUseCase,
    this._updateGroupStateMapper,
    this._deleteGroupUseCase,
    this._deleteGroupStateMapper,
  ) : super(const GroupDetailState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnAvatarChanged>(_onAvatarChanged);
    on<_OnNameChanged>(_onNameChanged);
    on<_OnDescriptionChanged>(_onDescriptionChanged);
    on<_OnFrequencyIntervalChanged>(_onFrequencyIntervalChanged);
    on<_OnChangedContacts>(_onChangedContacts);
    on<_OnOpenedSeeAll>((event, emit) => emit(state.copyWith(openedSeeAll: true)));
    on<_OnDeleteGroup>(_onDeleteGroup);
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
      final result = await _getGroupUseCase.run(groupId);
      emit(_getGroupStateMapper.mapResultToState(state, result));
      nameController.text = state.request.name;
      final List<String> contactIds = state.request.contacts;
      final List<Contact> contacts = await _supabaseRepository.getDBContactByIds(contactIds);
      emit(state.copyWith(contacts: contacts));
    }
  }

  FutureOr<void> _onAvatarChanged(_OnAvatarChanged event, Emitter<GroupDetailState> emit) async {
    if (state.isLoading) return;
    final File avatarFile = event.file;
    emit(state.copyWith(isLoading: true, avatarFile: avatarFile));
    final DataResult<String> uploadAvatarResult = await _uploadAvatarUseCase.run(avatarFile);
    final String avatarUrl = uploadAvatarResult.valueOrNull ?? '';
    if (uploadAvatarResult.isValue && avatarUrl.isNotEmpty) {
      GroupRequest request = state.request.copyWith(avatar: avatarUrl);
      final updateResult = await _updateGroupUseCase.run(request);
      emit(_updateGroupStateMapper.mapResultToState(state, updateResult));
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
    final isSuccess = await _updateGroup(request, emit);
    if (isSuccess) {
      emit(state.copyWith(isLoading: true));
      final List<ContactRequest> contactRequests = state.contacts.map((e) {
        final contactRequest = ContactRequest.fromJson(e.toJson());
        return contactRequest.copyWith(expiration: event.frequencyIntervalType.toExpirationDate());
      }).toList();
      final Resource<List<Contact>> resource =
          await _supabaseRepository.updateContacts(contactRequests);
      final List<Contact> contacts = resource.data ?? [];
      if (resource.isSuccess && contacts.isNotEmpty) {
        emit(state.copyWith(isLoading: false, contacts: contacts));
      } else {
        emit(state.copyWith(isLoading: false));
      }
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
}
