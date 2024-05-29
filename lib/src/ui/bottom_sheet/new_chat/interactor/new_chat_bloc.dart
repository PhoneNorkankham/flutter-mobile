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
import 'package:keepup/src/enums/frequency_interval_type.dart';
import 'package:keepup/src/enums/new_chat_tab_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_contact_input_type.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/mappers/create_contact_state_mapper.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/mappers/create_group_state_mapper.dart';
import 'package:keepup/src/use_cases/create_contact_use_case.dart';
import 'package:keepup/src/use_cases/create_group_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_use_case.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'new_chat_bloc.freezed.dart';
part 'new_chat_event.dart';
part 'new_chat_state.dart';

class NewChatBloc extends Bloc<NewChatEvent, NewChatState> {
  final keywordController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNoController = TextEditingController();
  final dateOfBirthController = TextEditingController();

  final _createContactStateMapper = CreateContactStateMapper();
  final _createGroupStateMapper = CreateGroupStateMapper();

  final SupabaseRepository _supabaseRepository;
  final UploadAvatarUseCase _uploadAvatarUseCase;
  final CreateContactUseCase _createContactUseCase;
  final CreateGroupUseCase _createGroupUseCase;

  NewChatBloc(
    this._supabaseRepository,
    this._uploadAvatarUseCase,
    this._createContactUseCase,
    this._createGroupUseCase,
  ) : super(const NewChatState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedTabType>(_onChangedTabType);
    on<_OnChangedKeyword>((event, emit) => emit(state.copyWith(keyword: event.keyword)));
    on<_OnSelectedGroup>((event, emit) => emit(state.copyWith(
          selectedGroup: event.group,
          contactRequest: state.contactRequest.copyWith(groupId: event.group.id),
        )));
    on<_OnSelectedContact>(_onSelectedContact);
    on<_OnRemovedContact>(_onRemovedContact);
    on<_OnChangedGroupName>((event, emit) => emit(state.copyWith.groupRequest(name: event.name)));
    on<_OnCreateNewGroup>(_onCreateNewGroup);
    on<_OnCreateNewContact>(_onCreateNewContact);
    on<_OnFrequencyIntervalChanged>((event, emit) => emit(state.copyWith.groupRequest(
          frequencyInterval: event.frequencyIntervalType,
        )));
    on<_OnInputChanged>(_onInputChanged);
    on<_OnChangedAvatar>((event, emit) => emit(state.copyWith(avatar: event.file)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<NewChatState> emit) async {
    final List<Group> groups = await _supabaseRepository.getDBGroups();
    await emit.forEach<List<Contact>>(
      _supabaseRepository.watchContacts(),
      onData: (contacts) => state.copyWith(
        contacts: contacts,
        groups: groups,
        pageState: PageState.success,
        isLoading: false,
      ),
      onError: (error, stacktrace) => state.copyWith(
        pageCommand: PageCommandMessage.showSuccess(LocaleKey.somethingWentWrong.tr),
        pageState: PageState.success,
        isLoading: false,
      ),
    );
  }

  FutureOr<void> _onChangedTabType(_OnChangedTabType event, Emitter<NewChatState> emit) {
    NewChatState newState = state.copyWith(tabType: event.type);
    switch (event.type) {
      case NewChatTabType.newChat:
        nameController.clear();
        emailController.clear();
        phoneNoController.clear();
        dateOfBirthController.clear();
        newState = newState.copyWith(
          avatar: null,
          selectedContacts: [],
          groupRequest: const GroupRequest(),
          contactRequest: const ContactRequest(),
        );
        break;
      case NewChatTabType.addContactsToGroup:
        emit(state.copyWith(
          pageCommand: PageCommandNavigation.toPage(
            AppPages.addContacts,
            argument: LocaleKey.addContactsToGroup.tr,
          ),
        ));
        return Future.value();
      case _:
        break;
    }
    emit(newState);
  }

  FutureOr<void> _onSelectedContact(_OnSelectedContact event, Emitter<NewChatState> emit) {
    emit(state.copyWith(selectedContacts: [...state.selectedContacts, event.contact]));
  }

  FutureOr<void> _onRemovedContact(_OnRemovedContact event, Emitter<NewChatState> emit) {
    emit(state.copyWith(selectedContacts: [...state.selectedContacts]..remove(event.contact)));
  }

  FutureOr<void> _onCreateNewGroup(_OnCreateNewGroup event, Emitter<NewChatState> emit) async {
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
    if (result.isValue) {
      nameController.clear();
    }
  }

  FutureOr<void> _onCreateNewContact(_OnCreateNewContact event, Emitter<NewChatState> emit) async {
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
    if (result.isValue) {
      nameController.clear();
      emailController.clear();
      phoneNoController.clear();
      dateOfBirthController.clear();
    }
  }

  FutureOr<void> _onInputChanged(_OnInputChanged event, Emitter<NewChatState> emit) {
    NewChatState newState;
    switch (event.inputType) {
      case NewChatInputType.name:
        newState = state.copyWith.contactRequest(name: event.value);
        break;
      case NewChatInputType.email:
        newState = state.copyWith.contactRequest(email: event.value);
        break;
      case NewChatInputType.phoneNo:
        newState = state.copyWith.contactRequest(phoneNo: event.value);
        break;
      case NewChatInputType.dateOfBirth:
        newState = state.copyWith.contactRequest(dateOfBirth: DateTime.tryParse(event.value));
        break;
    }
    emit(newState);
  }

  @override
  Future<void> close() {
    keywordController.dispose();
    nameController.dispose();
    emailController.dispose();
    phoneNoController.dispose();
    dateOfBirthController.dispose();
    return super.close();
  }
}
