import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:contacts_service/contacts_service.dart' as CS;
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/managers/permission_manager.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';
import 'package:keepup/src/use_cases/add_contacts_use_case.dart';
import 'package:keepup/src/use_cases/update_group_use_case.dart';
import 'package:path_provider/path_provider.dart';

part 'add_contacts_to_group_bloc.freezed.dart';
part 'add_contacts_to_group_event.dart';
part 'add_contacts_to_group_state.dart';

class AddContactsToGroupBloc extends Bloc<AddContactsToGroupEvent, AddContactsToGroupState> {
  final keywordController = TextEditingController();

  final PermissionManager _permissionManager;
  final SupabaseRepository _supabaseRepository;
  final UpdateGroupUseCase _updateGroupUseCase;
  final AddContactsUseCase _addContactsUseCase;

  AddContactsToGroupBloc(
    this._permissionManager,
    this._supabaseRepository,
    this._updateGroupUseCase,
    this._addContactsUseCase,
  ) : super(const AddContactsToGroupState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedKeyword>((event, emit) => emit(state.copyWith(keyword: event.keyword)));
    on<_OnSelectedContact>(_onSelectedContact);
    on<_OnRemovedContact>(_onRemovedContact);
    on<_OnAddContactsToGroup>(_onAddContactsToGroup);
  }

  FutureOr<void> _initial(_Initial event, Emitter<AddContactsToGroupState> emit) async {
    final List<ContactRequest> deviceContacts = await _getDeviceContacts();
    final List<Contact> contacts = await _supabaseRepository.getDBContacts();
    emit(state.copyWith(
      contacts: _combineContacts(
        contacts.map((e) => ContactRequest.fromJson(e.toJson())).toList(),
        deviceContacts,
      ),
      group: event.group,
      selectedContacts: event.selectedContacts,
      pageState: PageState.success,
    ));
  }

  Future<List<ContactRequest>> _getDeviceContacts() async {
    final bool isGranted = await _permissionManager.checkPermission(PermissionType.Contacts);
    if (isGranted) {
      final contacts = await CS.ContactsService.getContacts();
      final List<ContactRequest> contactRequests = [];
      for (final contact in contacts) {
        final contactRequest = ContactRequest(
          name: contact.displayName ?? '',
          email: contact.emails?.firstOrNull?.value ?? '',
          phoneNo: contact.phones?.firstOrNull?.value ?? '',
        );

        File? file;
        final Uint8List? avatar = contact.avatar;
        if (avatar != null && avatar.isNotEmpty) {
          try {
            final String phoneNo = contactRequest.phoneNo;
            final String fileName = jsonEncode(phoneNo) + Random().nextInt(1000).toString();
            final Directory tempDir = await getTemporaryDirectory();
            final tempFile = await File('${tempDir.path}/$fileName.png').create();
            await tempFile.writeAsBytes(avatar);
            file = tempFile;
          } catch (_) {}
        }
        contactRequests.add(contactRequest.copyWith(file: file));
      }
      return contactRequests;
    }
    return [];
  }

  List<ContactRequest> _combineContacts(
    List<ContactRequest> contacts,
    List<ContactRequest> deviceContacts,
  ) {
    final List<ContactRequest> newContacts = [...contacts];
    for (ContactRequest contact in deviceContacts) {
      // Combine supabase contacts to match device contacts
      final ContactRequest? oldContact = contacts
          .where((e) => e.contactId == contact.contactId || e.phoneNo == contact.phoneNo)
          .firstOrNull;
      if (oldContact == null) {
        // Add contact from device to new contacts
        newContacts.add(contact);
      }
    }
    newContacts.sort((a, b) => a.name.compareTo(b.name));
    return newContacts;
  }

  FutureOr<void> _onSelectedContact(
      _OnSelectedContact event, Emitter<AddContactsToGroupState> emit) {
    emit(state.copyWith(selectedContacts: [...state.selectedContacts, event.contact]));
  }

  FutureOr<void> _onRemovedContact(_OnRemovedContact event, Emitter<AddContactsToGroupState> emit) {
    emit(state.copyWith(selectedContacts: [...state.selectedContacts]..remove(event.contact)));
  }

  FutureOr<void> _onAddContactsToGroup(
    _OnAddContactsToGroup event,
    Emitter<AddContactsToGroupState> emit,
  ) async {
    final Group? group = state.group;
    if (group == null) return;
    emit(state.copyWith(isLoading: true));

    GroupRequest request = GroupRequest.fromJson(group.toJson());
    // #1. Add new contacts
    final List<ContactRequest> selectedContacts = state.selectedContacts
        .map((e) => e.copyWith(
              groupId: group.id,
              expiration: group.frequencyInterval.toExpirationDate(),
            ))
        .toList();
    if (selectedContacts.isNotEmpty) {
      final result = await _addContactsUseCase.run(selectedContacts);
      final List<String> newContactIds = result.valueOrNull?.map((e) => e.id).toList() ?? [];
      final List<String> contactIds = [...group.contacts, ...newContactIds];
      contactIds.sort((a, b) => a.compareTo(b));
      request = request.copyWith(contacts: contactIds);
    }

    // #2. Update group
    final result = await _updateGroupUseCase.run(request);
    if (result.isValue) {
      emit(state.copyWith(
        isLoading: false,
        pageCommand: PageCommandNavigation.pop(
          result: PopResult(status: true, resultFromPage: ''),
          isDialog: true,
        ),
      ));
    } else {
      final PageError pageError = result.asError!.error;
      emit(state.copyWith(
        isLoading: false,
        pageCommand: pageError.toPageCommand(),
      ));
    }
  }

  @override
  Future<void> close() {
    keywordController.dispose();
    return super.close();
  }
}
