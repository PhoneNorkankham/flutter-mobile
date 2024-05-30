import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:contacts_service/contacts_service.dart' as CS;
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart' hide Rx;
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/managers/permission_manager.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/enums/frequency_interval_type.dart';
import 'package:keepup/src/enums/new_chat_tab_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/add_contacts/usecases/add_contacts_use_case.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_contact_input_type.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/mappers/create_contact_state_mapper.dart';
import 'package:keepup/src/use_cases/create_contact_use_case.dart';
import 'package:keepup/src/use_cases/create_group_use_case.dart';
import 'package:keepup/src/use_cases/update_group_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_use_case.dart';
import 'package:rxdart/rxdart.dart';

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

  final PermissionManager _permissionManager;
  final SupabaseRepository _supabaseRepository;
  final UploadAvatarUseCase _uploadAvatarUseCase;
  final CreateContactUseCase _createContactUseCase;
  final CreateGroupUseCase _createGroupUseCase;
  final UpdateGroupUseCase _updateGroupUseCase;
  final AddContactsUseCase _addContactsUseCase;

  NewChatBloc(
    this._permissionManager,
    this._supabaseRepository,
    this._uploadAvatarUseCase,
    this._createContactUseCase,
    this._createGroupUseCase,
    this._updateGroupUseCase,
    this._addContactsUseCase,
  ) : super(const NewChatState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedTabType>(_onChangedTabType);
    on<_OnChangedKeyword>((event, emit) => emit(state.copyWith(keyword: event.keyword)));
    on<_OnSelectedGroup>(_onSelectedGroup);
    on<_OnSelectedContact>(_onSelectedContact);
    on<_OnRemovedContact>(_onRemovedContact);
    on<_OnChangedGroupName>((event, emit) => emit(state.copyWith.groupRequest(name: event.name)));
    on<_OnCreateNewGroup>(_onCreateNewGroup);
    on<_OnAddContactsToGroup>(_onAddContactsToGroup);
    on<_OnCreateNewContact>(_onCreateNewContact);
    on<_OnFrequencyIntervalChanged>((event, emit) => emit(state.copyWith.groupRequest(
          frequencyInterval: event.frequencyIntervalType,
        )));
    on<_OnInputChanged>(_onInputChanged);
    on<_OnChangedAvatar>((event, emit) => emit(state.copyWith(avatar: event.file)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<NewChatState> emit) async {
    final List<ContactRequest> deviceContacts = await _getDeviceContacts();
    await emit.forEach<_DispatchNewChatViewState>(
      Rx.combineLatest2(
        _supabaseRepository.watchGroups(),
        _supabaseRepository.watchContacts(),
        (groups, contacts) => _DispatchNewChatViewState(
          groups,
          contacts,
        ),
      ),
      onData: (dispatch) => state.copyWith(
        contacts: _combineContacts(
          dispatch.contacts.map((e) => ContactRequest.fromJson(e.toJson())).toList(),
          deviceContacts,
        ),
        groups: dispatch.groups,
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

  Future<List<ContactRequest>> _getDeviceContacts() async {
    final bool isGranted = await _permissionManager.checkPermission(PermissionType.Contacts);
    if (isGranted) {
      final contacts = await CS.ContactsService.getContacts();
      return contacts
          .map((e) => ContactRequest(
                name: e.displayName ?? '',
                email: e.emails?.firstOrNull?.value ?? '',
                phoneNo: e.phones?.firstOrNull?.value ?? '',
              ))
          .toList();
    }
    return [];
  }

  List<ContactRequest> _combineContacts(
    List<ContactRequest> contacts,
    List<ContactRequest> deviceContacts,
  ) {
    final List<ContactRequest> newContacts = [];
    for (ContactRequest contact in deviceContacts) {
      // Combine supabase contacts to match device contacts
      final ContactRequest? oldContact = contacts
          .where((e) => e.contactId == contact.contactId || e.phoneNo == contact.phoneNo)
          .firstOrNull;
      if (oldContact == null) {
        newContacts.add(contact);
      } else {
        newContacts.add(oldContact);
      }
    }
    newContacts.sort((a, b) => a.name.compareTo(b.name));
    return newContacts;
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
          selectedGroup: null,
          groupRequest: const GroupRequest(),
          contactRequest: const ContactRequest(),
        );
        break;
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
    final request = state.groupRequest.copyWith(avatar: avatarUrl);
    final result = await _createGroupUseCase.run(request);
    final Group? group = result.valueOrNull;
    if (result.isValue && group != null) {
      final result = await _addContactsUseCase
          .run(state.selectedContacts.map((e) => e.copyWith(groupId: group.id)).toList());
      final List<Contact> contacts = result.valueOrNull ?? [];
      if (contacts.isNotEmpty) {
        await _supabaseRepository.updateGroup(GroupRequest.fromJson(group.toJson())
            .copyWith(contacts: contacts.map((e) => e.id).toList()));
      }
      nameController.clear();
      emit(state.copyWith(
        isLoading: false,
        tabType: NewChatTabType.newChat,
        keyword: '',
        selectedContacts: [],
        selectedGroup: null,
        groupRequest: const GroupRequest(),
        contactRequest: const ContactRequest(),
        avatar: null,
        pageCommand: PageCommandMessage.showSuccess(LocaleKey.groupCreatedSuccessfully.tr),
      ));
    } else {
      emit(state.copyWith(
        isLoading: false,
        pageCommand: result.asError?.error.toPageCommand(),
      ));
    }
  }

  FutureOr<void> _onAddContactsToGroup(
    _OnAddContactsToGroup event,
    Emitter<NewChatState> emit,
  ) async {
    final Group? group = state.selectedGroup;
    if (group == null) return;
    emit(state.copyWith(isLoading: true));
    final result = await _addContactsUseCase
        .run(state.selectedContacts.map((e) => e.copyWith(groupId: group.id)).toList());
    final List<Contact> contacts = result.valueOrNull ?? [];
    if (result.isValue && contacts.isNotEmpty) {
      final contactIds = [
        ...group.contacts, // Old contacts
        ...contacts.map((e) => e.id), // New contacts
      ];
      final request = GroupRequest.fromJson(group.toJson())
          .copyWith(contacts: contactIds.toSet().map((e) => e.toString()).toList());
      final result = await _updateGroupUseCase.run(request);
      if (result.isValue) {
        emit(state.copyWith(
          isLoading: false,
          tabType: NewChatTabType.newChat,
          keyword: '',
          selectedContacts: [],
          selectedGroup: null,
          groupRequest: const GroupRequest(),
          contactRequest: const ContactRequest(),
          avatar: null,
          pageCommand: PageCommandMessage.showSuccess(LocaleKey.addContactsToGroupSuccessfully.tr),
        ));
      } else {
        emit(state.copyWith(
          isLoading: false,
          pageCommand: result.asError?.error.toPageCommand(),
        ));
      }
    } else {
      emit(state.copyWith(
        isLoading: false,
        pageCommand: result.asError?.error.toPageCommand(),
      ));
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

  FutureOr<void> _onSelectedGroup(_OnSelectedGroup event, Emitter<NewChatState> emit) {
    if (state.tabType == NewChatTabType.newContact) {
      emit(state.copyWith(
        selectedGroup: event.group,
        contactRequest: state.contactRequest.copyWith(groupId: event.group.id),
      ));
    } else if (state.tabType == NewChatTabType.groups) {
      emit(state.copyWith(
        selectedGroup: event.group,
        tabType: NewChatTabType.addContactsToGroup,
      ));
    }
  }
}

class _DispatchNewChatViewState {
  final List<Group> groups;
  final List<Contact> contacts;

  _DispatchNewChatViewState(this.groups, this.contacts);
}
