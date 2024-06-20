import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart' hide Rx;
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/bottom_sheet/new_contact/interactor/new_contact_input_type.dart';
import 'package:keepup/src/ui/bottom_sheet/new_contact/mappers/create_contact_state_mapper.dart';
import 'package:keepup/src/use_cases/create_contact_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_use_case.dart';

part 'new_contact_bloc.freezed.dart';
part 'new_contact_event.dart';
part 'new_contact_state.dart';

class NewContactBloc extends Bloc<NewContactEvent, NewContactState> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNoController = TextEditingController();
  final dateOfBirthController = TextEditingController();

  final _createContactStateMapper = CreateContactStateMapper();

  final SupabaseRepository _supabaseRepository;
  final UploadAvatarUseCase _uploadAvatarUseCase;
  final CreateContactUseCase _createContactUseCase;

  NewContactBloc(
    this._supabaseRepository,
    this._uploadAvatarUseCase,
    this._createContactUseCase,
  ) : super(const NewContactState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnSelectedGroup>(_onSelectedGroup);
    on<_OnCreateNewContact>(_onCreateNewContact);
    on<_OnInputChanged>(_onInputChanged);
    on<_OnChangedAvatar>((event, emit) => emit(state.copyWith(avatar: event.file)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<NewContactState> emit) async {
    await emit.forEach<List<Group>>(
      _supabaseRepository.watchDBGroups(),
      onData: (groups) => state.copyWith(
        groups: groups,
        pageState: PageState.success,
      ),
      onError: (error, stacktrace) => state.copyWith(
        pageCommand: PageCommandMessage.showSuccess(LocaleKey.somethingWentWrong.tr),
        pageState: PageState.success,
      ),
    );
  }

  FutureOr<void> _onCreateNewContact(
    _OnCreateNewContact event,
    Emitter<NewContactState> emit,
  ) async {
    final Group? selectedGroup = state.selectedGroup;
    if (selectedGroup == null) {
      emit(state.copyWith(
        pageCommand: PageCommandMessage.showError(LocaleKey.pleaseChooseAGroup.tr),
      ));
      return;
    }
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

    final request = state.contactRequest.copyWith(
      avatar: avatarUrl,
      expiration: selectedGroup.frequencyInterval.toExpirationDate(),
    );
    final result = await _createContactUseCase.run(request);
    emit(_createContactStateMapper.mapResultToState(state, result));
  }

  FutureOr<void> _onInputChanged(_OnInputChanged event, Emitter<NewContactState> emit) {
    NewContactState newState;
    switch (event.inputType) {
      case NewContactInputType.name:
        newState = state.copyWith.contactRequest(name: event.value);
        break;
      case NewContactInputType.email:
        newState = state.copyWith.contactRequest(email: event.value);
        break;
      case NewContactInputType.phoneNo:
        newState = state.copyWith.contactRequest(phoneNo: event.value);
        break;
      case NewContactInputType.dateOfBirth:
        newState = state.copyWith.contactRequest(dateOfBirth: DateTime.tryParse(event.value));
        break;
    }
    emit(newState);
  }

  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    phoneNoController.dispose();
    dateOfBirthController.dispose();
    return super.close();
  }

  FutureOr<void> _onSelectedGroup(_OnSelectedGroup event, Emitter<NewContactState> emit) {
    emit(state.copyWith(
      selectedGroup: event.group,
      contactRequest: state.contactRequest.copyWith(groupId: event.group.id),
    ));
  }
}
