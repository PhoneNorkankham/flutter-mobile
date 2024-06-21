import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:contacts_service/contacts_service.dart' as CS;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/managers/permission_manager.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/extensions/contact_extensions.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/utils/app_utils.dart';

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
    final bool isGranted = await _permissionManager.checkPermission(PermissionType.Contacts);
    final List<ContactRequest> deviceContacts;
    if (isGranted) {
      final List<CS.Contact> contacts = await CS.ContactsService.getContacts();
      deviceContacts = await contacts.toContactRequests();
    } else {
      deviceContacts = [];
    }
    final List<Contact> contacts = await _supabaseRepository.getDBContacts();
    // Get all contacts that don't belong to any other group
    final List<ContactRequest> newContacts = AppUtils.combineContacts(
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

  FutureOr<void> _onSelectedContact(_OnSelectedContact event, Emitter<AddMemberState> emit) {
    emit(state.copyWith(selectedContacts: [...state.selectedContacts, event.contact]));
  }

  FutureOr<void> _onRemovedContact(_OnRemovedContact event, Emitter<AddMemberState> emit) {
    emit(state.copyWith(selectedContacts: [...state.selectedContacts]..remove(event.contact)));
  }
}
