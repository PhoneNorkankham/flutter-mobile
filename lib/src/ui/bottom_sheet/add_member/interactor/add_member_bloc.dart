import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:contacts_service/contacts_service.dart' as CS;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/managers/permission_manager.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:path_provider/path_provider.dart';

part 'add_member_bloc.freezed.dart';
part 'add_member_event.dart';
part 'add_member_state.dart';

class AddMemberBloc extends Bloc<AddMemberEvent, AddMemberState> {
  final PermissionManager _permissionManager;
  final SupabaseRepository _supabaseRepository;

  AddMemberBloc(
    this._permissionManager,
    this._supabaseRepository,
  ) : super(const AddMemberState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedKeyword>((event, emit) => emit(state.copyWith(keyword: event.keyword)));
    on<_OnSelectedContact>(_onSelectedContact);
    on<_OnRemovedContact>(_onRemovedContact);
  }

  FutureOr<void> _initial(_Initial event, Emitter<AddMemberState> emit) async {
    emit(state.copyWith(groupId: event.groupId, selectedContacts: event.selectedContacts));
    final List<ContactRequest> deviceContacts = await _getDeviceContacts();
    final List<Contact> contacts = await _supabaseRepository.getDBContacts();
    // Get all contacts that don't belong to any other group
    final List<ContactRequest> newContacts = _combineContacts(
      contacts.map((e) => ContactRequest.fromJson(e.toJson())).toList(),
      deviceContacts,
    ).where((contact) => contact.groupId.isEmpty || contact.groupId == state.groupId).toList();

    // Get all selected contacts
    final List<ContactRequest> selectedContacts = newContacts
        .where((contact) => (event.selectedContacts.firstWhereOrNull((element) =>
                (element.contactId.isNotEmpty && element.contactId == contact.contactId) ||
                (element.phoneNo.isNotEmpty && element.phoneNo == contact.phoneNo)) !=
            null))
        .toList();

    emit(state.copyWith(
      contacts: newContacts,
      selectedContacts: selectedContacts,
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

  FutureOr<void> _onSelectedContact(_OnSelectedContact event, Emitter<AddMemberState> emit) {
    emit(state.copyWith(selectedContacts: [...state.selectedContacts, event.contact]));
  }

  FutureOr<void> _onRemovedContact(_OnRemovedContact event, Emitter<AddMemberState> emit) {
    emit(state.copyWith(selectedContacts: [...state.selectedContacts]..remove(event.contact)));
  }
}
