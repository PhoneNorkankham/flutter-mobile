import 'dart:async';

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
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';
import 'package:keepup/src/use_cases/add_contacts_use_case.dart';
import 'package:keepup/src/use_cases/update_group_use_case.dart';

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
    emit(state.copyWith(group: event.group, selectedContacts: event.selectedContacts));
    final List<ContactRequest> deviceContacts = await _getDeviceContacts();
    await emit.forEach<List<Contact>>(
      _supabaseRepository.watchContacts(),
      onData: (contacts) => state.copyWith(
        contacts: _combineContacts(
          contacts.map((e) => ContactRequest.fromJson(e.toJson())).toList(),
          deviceContacts,
        ),
        pageState: PageState.success,
      ),
      onError: (error, stacktrace) => state.copyWith(
        pageCommand: PageCommandMessage.showSuccess(LocaleKey.somethingWentWrong.tr),
        pageState: PageState.success,
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
          pageCommand: PageCommandNavigation.pop(
            result: PopResult(status: true, resultFromPage: ''),
            isDialog: true,
          ),
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

  @override
  Future<void> close() {
    keywordController.dispose();
    return super.close();
  }
}
