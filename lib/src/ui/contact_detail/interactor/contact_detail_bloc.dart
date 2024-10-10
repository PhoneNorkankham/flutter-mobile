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
import 'package:keepup/src/enums/contact_type.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/contact_detail/interactor/contact_detail_input_type.dart';
import 'package:keepup/src/ui/contact_detail/mappers/create_contact_state_mapper.dart';
import 'package:keepup/src/ui/contact_detail/mappers/delete_contact_state_mapper.dart';
import 'package:keepup/src/ui/contact_detail/mappers/get_contact_state_mapper.dart';
import 'package:keepup/src/ui/contact_detail/mappers/update_contact_state_mapper.dart';
import 'package:keepup/src/ui/contact_detail/usecases/get_contact_use_case.dart';
import 'package:keepup/src/use_cases/create_contact_use_case.dart';
import 'package:keepup/src/use_cases/delete_contact_use_case.dart';
import 'package:keepup/src/use_cases/update_contact_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_from_url_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_use_case.dart';

part 'contact_detail_bloc.freezed.dart';
part 'contact_detail_event.dart';
part 'contact_detail_state.dart';

class ContactDetailBloc extends Bloc<ContactDetailEvent, ContactDetailState> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNoController = TextEditingController();
  final dateOfBirthController = TextEditingController();

  final SupabaseRepository _supabaseRepository;
  final CreateContactUseCase _createContactUseCase;
  final CreateContactStateMapper _createContactStateMapper;
  final UploadAvatarUseCase _uploadAvatarUseCase;
  final UploadAvatarFromUrlUseCase _uploadAvatarFromUrlUseCase;
  final GetContactUseCase _getContactUseCase;
  final GetContactStateMapper _getContactStateMapper;
  final UpdateContactUseCase _updateContactUseCase;
  final UpdateContactStateMapper _updateContactStateMapper;
  final DeleteContactUseCase _deleteContactUseCase;
  final DeleteContactStateMapper _deleteContactStateMapper;

  ContactDetailBloc(
    this._supabaseRepository,
    this._createContactUseCase,
    this._createContactStateMapper,
    this._uploadAvatarUseCase,
    this._uploadAvatarFromUrlUseCase,
    this._getContactUseCase,
    this._getContactStateMapper,
    this._updateContactUseCase,
    this._updateContactStateMapper,
    this._deleteContactUseCase,
    this._deleteContactStateMapper,
  ) : super(const ContactDetailState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnSelectedGroup>((event, emit) => emit(state.copyWith(
          selectedGroup: event.group,
          request: state.request.copyWith(groupId: event.group.id),
        )));
    on<_OnInputChanged>(_onInputChanged);
    on<_OnSavePressed>(_onSavePressed);
    on<_OnCancelPressed>((event, emit) => emit(state.copyWith(
          pageCommand: PageCommandNavigation.pop(),
        )));
    on<_OnChangedAvatar>((event, emit) => emit(state.copyWith(
          avatar: event.file,
          bingSearchImageData: null,
        )));
    on<_OnChangedAvatarFromUrl>((event, emit) => emit(state.copyWith(
          avatar: null,
          bingSearchImageData: event.data,
        )));
    on<_OnDeleteContact>(_onDeleteContact);
  }

  FutureOr<void> _initial(_Initial event, Emitter<ContactDetailState> emit) async {
    final arguments = Get.arguments;
    final String contactId = arguments is String
        ? arguments
        : arguments is Contact
            ? arguments.id
            : '';
    final List<Group> groups = await _supabaseRepository.getDBGroups();
    if (contactId.isEmpty) {
      emit(state.copyWith(contactType: ContactType.newContact, groups: groups));
    } else {
      emit(state.copyWith(isLoading: true, contactType: ContactType.contactDetail, groups: groups));
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
    final Group? selectedGroup = state.selectedGroup;
    if (selectedGroup == null) {
      emit(state.copyWith(
        pageCommand: PageCommandMessage.showError(LocaleKey.pleaseChooseAGroup.tr),
      ));
      return;
    }
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
          pageCommand: pageError.toPageCommand(),
        ));
        return;
      }
    } else if (state.bingSearchImageData != null) {
      String newAvatar = state.bingSearchImageData!.contentUrl;
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

    final DateTime expiration = selectedGroup.frequencyInterval.toExpirationDate();
    final request = state.request.copyWith(
      avatar: avatarUrl,
      expiration: expiration,
    );
    if (state.contactType == ContactType.newContact) {
      final result = await _createContactUseCase.run(request);
      emit(_createContactStateMapper.mapResultToState(state, result));
    } else {
      final result = await _updateContactUseCase.run(request);
      emit(_updateContactStateMapper.mapResultToState(state, result));
    }
  }

  FutureOr<void> _onDeleteContact(_OnDeleteContact event, Emitter<ContactDetailState> emit) async {
    emit(state.copyWith(isLoading: true));
    final VoidResult result = await _deleteContactUseCase.run(state.contactId);
    emit(_deleteContactStateMapper.mapResultToState(state, result));
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
