import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/model/bing_search_image_data.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/core/resource.dart';
import 'package:keepup/src/enums/frequency_interval_type.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/bottom_sheet/new_group/mappers/create_group_state_mapper.dart';
import 'package:keepup/src/use_cases/add_contacts_use_case.dart';
import 'package:keepup/src/use_cases/create_group_use_case.dart';
import 'package:keepup/src/use_cases/update_group_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_from_url_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_use_case.dart';

part 'new_group_bloc.freezed.dart';
part 'new_group_event.dart';
part 'new_group_state.dart';

class NewGroupBloc extends Bloc<NewGroupEvent, NewGroupState> {
  final keywordController = TextEditingController();
  final nameController = TextEditingController();
  final nameFocusNode = FocusNode();

  final UploadAvatarUseCase _uploadAvatarUseCase;
  final UploadAvatarFromUrlUseCase _uploadAvatarFromUrlUseCase;
  final CreateGroupUseCase _createGroupUseCase;
  final AddContactsUseCase _addContactsUseCase;
  final UpdateGroupUseCase _updateGroupUseCase;
  final SupabaseRepository _supabaseRepository;

  final _createGroupStateMapper = CreateGroupStateMapper();

  NewGroupBloc(
    this._uploadAvatarUseCase,
    this._uploadAvatarFromUrlUseCase,
    this._createGroupUseCase,
    this._addContactsUseCase,
    this._updateGroupUseCase,
    this._supabaseRepository,
  ) : super(const NewGroupState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnSelectedContact>(_onSelectedContact);
    on<_OnRemovedContact>(_onRemovedContact);
    on<_OnChangedGroupName>((event, emit) => emit(state.copyWith.groupRequest(name: event.name)));
    on<_OnCreateNewGroup>(_onCreateNewGroup);
    on<_OnSelectedContacts>(
        (event, emit) => emit(state.copyWith(selectedContacts: event.contacts)));
    on<_OnFrequencyIntervalChanged>((event, emit) => emit(state.copyWith.groupRequest(
          frequencyInterval: event.frequencyIntervalType,
        )));
    on<_OnCategoryChanged>((event, emit) => emit(state.copyWith(
          selectedCategory: event.category,
          groupRequest: state.groupRequest.copyWith(
            categoryId: event.category.id,
          ),
        )));
    on<_OnChangedAvatar>((event, emit) => emit(state.copyWith(
          avatar: event.file,
          groupRequest: state.groupRequest.copyWith(avatar: ''),
        )));
    on<_OnChangedAvatarFromUrl>((event, emit) => emit(state.copyWith(
          avatar: null,
          groupRequest: state.groupRequest.copyWith(avatar: event.data.contentUrl),
        )));
  }

  FutureOr<void> _initial(_Initial event, Emitter<NewGroupState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Resource<List<Category>> resource = await _supabaseRepository.getCategories();
    final List<Category> categories = resource.data ?? [];
    final Category selectedCategory =
        categories.firstOrNull ?? const Category(id: '', name: 'None');
    final NewGroupState newState = state.copyWith(
      isLoading: false,
      categories: categories,
      selectedCategory: selectedCategory,
      groupRequest: state.groupRequest.copyWith(
        categoryId: selectedCategory.id,
      ),
    );
    if (resource.isSuccess) {
      emit(newState);
    } else {
      final pageCommand = PageCommandMessage.showError(resource.message ?? '');
      emit(newState.copyWith(pageCommand: pageCommand));
    }
  }

  FutureOr<void> _onSelectedContact(_OnSelectedContact event, Emitter<NewGroupState> emit) {
    emit(state.copyWith(selectedContacts: [...state.selectedContacts, event.contact]));
  }

  FutureOr<void> _onRemovedContact(_OnRemovedContact event, Emitter<NewGroupState> emit) {
    emit(state.copyWith(selectedContacts: [...state.selectedContacts]..remove(event.contact)));
  }

  FutureOr<void> _onCreateNewGroup(_OnCreateNewGroup event, Emitter<NewGroupState> emit) async {
    emit(state.copyWith(isLoading: true));
    // #1. Upload Avatar of Group
    String avatarUrl = '';
    final File? avatarFile = state.avatar;
    if (avatarFile != null) {
      final DataResult<String> result = await _uploadAvatarUseCase.run(avatarFile);
      if (result.isValue) {
        avatarUrl = result.valueOrNull ?? '';
      } else {
        final PageError pageError = result.asError!.error;
        return emit(state.copyWith(
          isLoading: false,
          pageCommand: pageError.toPageCommand(),
        ));
      }
    } else if (state.groupRequest.avatar.isNotEmpty) {
      String newAvatar = state.groupRequest.avatar;
      DataResult<String> uploadAvatarResult = await _uploadAvatarFromUrlUseCase.run(newAvatar);
      if (uploadAvatarResult.isValue) {
        avatarUrl = uploadAvatarResult.valueOrNull ?? '';
      } else {
        final PageError pageError = uploadAvatarResult.asError!.error;
        emit(state.copyWith(
          isLoading: false,
          pageCommand: pageError.toPageCommand(),
        ));
        return;
      }
    }

    // #2. Create new Group
    final request = state.groupRequest.copyWith(avatar: avatarUrl);
    final result = await _createGroupUseCase.run(request);
    final Group? group = result.valueOrNull;
    if (group != null && state.selectedContacts.isNotEmpty) {
      // #3. Add new contacts and update old contacts
      final List<ContactRequest> contactRequests = state.selectedContacts
          .map((e) => e.copyWith(
                groupId: group.id,
                expiration: group.frequencyInterval.toExpirationDate(),
              ))
          .toList();
      final result = await _addContactsUseCase.run(contactRequests);
      final List<String> contactIds = result.valueOrNull?.map((e) => e.id).toList() ?? [];
      if (result.isValue && contactIds.isNotEmpty) {
        // #4. Add contactIds to group
        final request = GroupRequest.fromJson(group.toJson()).copyWith(contacts: contactIds);
        final result = await _updateGroupUseCase.run(request);
        return emit(_createGroupStateMapper.mapResultToState(state, result));
      }
    }
    emit(_createGroupStateMapper.mapResultToState(state, result));
  }

  @override
  Future<void> close() {
    keywordController.dispose();
    nameController.dispose();
    nameFocusNode.dispose();
    return super.close();
  }
}
