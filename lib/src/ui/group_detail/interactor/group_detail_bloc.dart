import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/enums/frequency_interval_type.dart';
import 'package:keepup/src/enums/group_type.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/group_detail/mappers/create_group_state_mapper.dart';
import 'package:keepup/src/ui/group_detail/mappers/delete_group_state_mapper.dart';
import 'package:keepup/src/ui/group_detail/mappers/get_group_state_mapper.dart';
import 'package:keepup/src/ui/group_detail/mappers/update_group_state_mapper.dart';
import 'package:keepup/src/ui/group_detail/usecases/get_group_use_case.dart';
import 'package:keepup/src/use_cases/create_group_use_case.dart';
import 'package:keepup/src/use_cases/delete_group_use_case.dart';
import 'package:keepup/src/use_cases/update_group_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_use_case.dart';

part 'group_detail_bloc.freezed.dart';
part 'group_detail_event.dart';
part 'group_detail_state.dart';

class GroupDetailBloc extends Bloc<GroupDetailEvent, GroupDetailState> {
  final nameController = TextEditingController();

  final SupabaseRepository _supabaseRepository;
  final CreateGroupUseCase _createGroupUseCase;
  final CreateGroupStateMapper _createGroupStateMapper;
  final UploadAvatarUseCase _uploadAvatarUseCase;
  final GetGroupUseCase _getGroupUseCase;
  final GetGroupStateMapper _getGroupStateMapper;
  final UpdateGroupUseCase _updateGroupUseCase;
  final UpdateGroupStateMapper _updateGroupStateMapper;
  final DeleteGroupUseCase _deleteGroupUseCase;
  final DeleteGroupStateMapper _deleteGroupStateMapper;

  GroupDetailBloc(
    this._supabaseRepository,
    this._createGroupUseCase,
    this._createGroupStateMapper,
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
    on<_OnFrequencyIntervalChanged>((event, emit) => emit(state.copyWith.request(
          frequencyInterval: event.frequencyIntervalType,
        )));
    on<_OnNameChanged>((event, emit) => emit(state.copyWith.request(name: event.value)));
    on<_OnChangedKeyword>((event, emit) => emit(state.copyWith(keyword: event.keyword)));
    on<_OnSavePressed>(_onSavePressed);
    on<_OnCancelPressed>(
        (_, emit) => emit(state.copyWith(pageCommand: PageCommandNavigation.pop())));
    on<_OnChangedAvatar>((event, emit) => emit(state.copyWith(avatar: event.file)));
    on<_OnRemoveContact>(_onRemoveContact);
    on<_OnDeleteGroup>(_onDeleteGroup);
    on<_OnAddedMembers>((event, emit) => emit(state.copyWith(contacts: event.contacts)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<GroupDetailState> emit) async {
    final arguments = Get.arguments;
    final String groupId = arguments is Group
        ? arguments.id
        : arguments is String
            ? arguments
            : '';
    if (groupId.isEmpty) {
      emit(state.copyWith(pageState: PageState.success, groupType: GroupType.newGroup));
    } else {
      emit(state.copyWith(groupType: GroupType.groupDetail));
      final result = await _getGroupUseCase.run(groupId);
      emit(_getGroupStateMapper.mapResultToState(state, result));
      nameController.text = state.request.name;
      final List<String> contactIds = state.request.contacts;
      final List<Contact> contacts = await _supabaseRepository.getAllContactByIds(contactIds);
      emit(state.copyWith(contacts: contacts));
    }
  }

  FutureOr<void> _onSavePressed(_OnSavePressed event, Emitter<GroupDetailState> emit) async {
    emit(state.copyWith(isLoading: true));
    final File? avatarFile = state.avatar;
    String avatarUrl = state.request.avatar;
    if (avatarFile != null) {
      final DataResult<String> result = await _uploadAvatarUseCase.run(avatarFile);
      if (result.isValue) {
        avatarUrl = result.valueOrCrash;
      } else {
        final PageError pageError = result.asError!.error;
        emit(state.copyWith(
          isLoading: false,
          pageCommand: pageError.pageErrorType == NetworkError.token
              ? PageCommandDialog.showExpirationSession()
              : PageCommandMessage.showError(pageError.message),
        ));
        return;
      }
    }
    final GroupRequest request = state.request.copyWith(
      avatar: avatarUrl,
      contacts: state.contacts.map((e) => e.id).toList(),
    );
    if (state.groupType == GroupType.newGroup) {
      final result = await _createGroupUseCase.run(request);
      emit(_createGroupStateMapper.mapResultToState(state, result));
    } else {
      final result = await _updateGroupUseCase.run(request);
      emit(_updateGroupStateMapper.mapResultToState(state, result));
    }
  }

  FutureOr<void> _onRemoveContact(_OnRemoveContact event, Emitter<GroupDetailState> emit) {
    final List<Contact> contacts = [...state.contacts]..remove(event.contact);
    emit(state.copyWith(contacts: contacts));
  }

  FutureOr<void> _onDeleteGroup(_OnDeleteGroup event, Emitter<GroupDetailState> emit) async {
    emit(state.copyWith(isLoading: true));
    final VoidResult result = await _deleteGroupUseCase.run(state.groupId);
    emit(_deleteGroupStateMapper.mapResultToState(state, result));
  }
}
