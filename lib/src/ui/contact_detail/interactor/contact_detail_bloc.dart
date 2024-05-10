import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/model/choice_every_day_data.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/enums/contact_type.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/contact_detail/interactor/contact_detail_input_type.dart';
import 'package:keepup/src/ui/contact_detail/mappers/create_contact_state_mapper.dart';
import 'package:keepup/src/ui/contact_detail/mappers/get_contact_state_mapper.dart';
import 'package:keepup/src/ui/contact_detail/mappers/update_contact_state_mapper.dart';
import 'package:keepup/src/ui/contact_detail/usecases/get_contact_use_case.dart';
import 'package:keepup/src/use_cases/create_contact_use_case.dart';
import 'package:keepup/src/use_cases/update_contact_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_use_case.dart';
import 'package:keepup/src/utils/app_constants.dart';

part 'contact_detail_bloc.freezed.dart';
part 'contact_detail_event.dart';
part 'contact_detail_state.dart';

class ContactDetailBloc extends Bloc<ContactDetailEvent, ContactDetailState> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNoController = TextEditingController();
  final dateOfBirthController = TextEditingController();

  final CreateContactUseCase _createContactUseCase;
  final CreateContactStateMapper _createContactStateMapper;
  final UploadAvatarUseCase _uploadAvatarUseCase;
  final GetContactUseCase _getContactUseCase;
  final GetContactStateMapper _getContactStateMapper;
  final UpdateContactUseCase _updateContactUseCase;
  final UpdateContactStateMapper _updateContactStateMapper;

  ContactDetailBloc(
    this._createContactUseCase,
    this._createContactStateMapper,
    this._uploadAvatarUseCase,
    this._getContactUseCase,
    this._getContactStateMapper,
    this._updateContactUseCase,
    this._updateContactStateMapper,
  ) : super(const ContactDetailState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnIntervalChanged>((event, emit) => emit(state.copyWith(interval: event.interval)));
    on<_OnFrequencyChanged>((event, emit) => emit(state.copyWith(everyDays: event.frequency)));
    on<_OnInputChanged>(_onInputChanged);
    on<_OnSavePressed>(_onSavePressed);
    on<_OnCancelPressed>((event, emit) => emit(state.copyWith(
          pageCommand: PageCommandNavigation.pop(),
        )));
    on<_OnChangedAvatar>((event, emit) => emit(state.copyWith(avatar: event.file)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<ContactDetailState> emit) async {
    final arguments = Get.arguments;
    final String contactId = arguments is String
        ? arguments
        : arguments is Contact
            ? arguments.id
            : '';
    if (contactId.isEmpty) {
      emit(state.copyWith(contactType: ContactType.newContact));
    } else {
      emit(state.copyWith(isLoading: true));
      final result = await _getContactUseCase.run(contactId);
      emit(_getContactStateMapper.mapResultToState(state, result));
      nameController.text = state.request.name;
      emailController.text = state.request.email;
      phoneNoController.text = state.request.phoneNo;
      dateOfBirthController.text = state.request.dateOfBirth?.generalDateText ?? '';
    }
  }

  FutureOr<void> _onInputChanged(_OnInputChanged event, Emitter<ContactDetailState> emit) {
    ContactDetailState newState;
    switch (event.inputType) {
      case ContactDetailInputType.name:
        newState = state.copyWith.request(name: event.value);
        break;
      case ContactDetailInputType.email:
        newState = state.copyWith.request(email: event.value);
        break;
      case ContactDetailInputType.phoneNo:
        newState = state.copyWith.request(phoneNo: event.value);
        break;
      case ContactDetailInputType.dateOfBirth:
        newState = state.copyWith.request(dateOfBirth: DateTime.tryParse(event.value));
        break;
    }
    emit(newState);
  }

  FutureOr<void> _onSavePressed(_OnSavePressed event, Emitter<ContactDetailState> emit) async {
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
    final DateTime now = DateUtils.dateOnly(DateTime.now());
    final request = state.request.copyWith(
      avatar: avatarUrl,
      expiration: now.add(Duration(days: state.interval.toInt())),
      frequency: state.everyDays.map((e) => e.isActive).toList(),
    );
    if (state.contactType == ContactType.newContact) {
      final result = await _createContactUseCase.run(request);
      emit(_createContactStateMapper.mapResultToState(state, result));
    } else {
      final result = await _updateContactUseCase.run(request);
      emit(_updateContactStateMapper.mapResultToState(state, result));
    }
  }
}
