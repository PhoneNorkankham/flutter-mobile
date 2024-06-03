import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/enums/frequency_interval_type.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/bottom_sheet/new_group/mappers/create_group_state_mapper.dart';
import 'package:keepup/src/use_cases/create_group_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_use_case.dart';

part 'new_group_bloc.freezed.dart';
part 'new_group_event.dart';
part 'new_group_state.dart';

class NewGroupBloc extends Bloc<NewGroupEvent, NewGroupState> {
  final keywordController = TextEditingController();
  final nameController = TextEditingController();

  final UploadAvatarUseCase _uploadAvatarUseCase;
  final CreateGroupUseCase _createGroupUseCase;

  final _createGroupStateMapper = CreateGroupStateMapper();

  NewGroupBloc(
    this._uploadAvatarUseCase,
    this._createGroupUseCase,
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
    on<_OnChangedAvatar>((event, emit) => emit(state.copyWith(avatar: event.file)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<NewGroupState> emit) async {}

  FutureOr<void> _onSelectedContact(_OnSelectedContact event, Emitter<NewGroupState> emit) {
    emit(state.copyWith(selectedContacts: [...state.selectedContacts, event.contact]));
  }

  FutureOr<void> _onRemovedContact(_OnRemovedContact event, Emitter<NewGroupState> emit) {
    emit(state.copyWith(selectedContacts: [...state.selectedContacts]..remove(event.contact)));
  }

  FutureOr<void> _onCreateNewGroup(_OnCreateNewGroup event, Emitter<NewGroupState> emit) async {
    emit(state.copyWith(isLoading: true));
    final File? avatarFile = state.avatar;
    String avatarUrl = '';
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
    final request = state.groupRequest.copyWith(
      avatar: avatarUrl,
      contacts: state.selectedContacts.map((e) => e.id).toList(),
    );
    final result = await _createGroupUseCase.run(request);
    emit(_createGroupStateMapper.mapResultToState(state, result));
  }

  @override
  Future<void> close() {
    keywordController.dispose();
    nameController.dispose();
    return super.close();
  }
}
