import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:contacts_service/contacts_service.dart' hide Contact;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/managers/permission_manager.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/add_contact_request.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';

part 'add_contacts_bloc.freezed.dart';
part 'add_contacts_event.dart';
part 'add_contacts_state.dart';

class AddContactsBloc extends Bloc<AddContactsEvent, AddContactsState> {
  final PermissionManager _permissionManager;
  final SupabaseRepository _supabaseRepository;

  AddContactsBloc(
    this._permissionManager,
    this._supabaseRepository,
  ) : super(const AddContactsState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedKeyword>(_onChangedKeyword);
    on<_OnChangedContact>(_onChangedContact);
  }

  FutureOr<void> _initial(_Initial event, Emitter<AddContactsState> emit) async {
    await _supabaseRepository.getContacts();
    final List<Group> groups = await _supabaseRepository.getDBGroups();
    final List<AddContactRequest> deviceContacts = await _getDeviceContacts();
    await emit.forEach<List<AddContactRequest>>(
      _supabaseRepository
          .watchContacts()
          .map((event) => event.map((e) => AddContactRequest.fromJson(e.toJson())).toList()),
      onData: (contacts) {
        contacts = _combineContacts(contacts, deviceContacts);
        AddContactsState state = this.state.copyWith();
        final String keyword = state.keyword;
        final List<AddContactRequest> filterContacts;
        if (keyword.isEmpty) {
          filterContacts = [...contacts];
        } else {
          filterContacts = [
            ...contacts
                .where((element) => element.name.toLowerCase().contains(keyword.toLowerCase()))
                .toList()
          ];
        }
        return state.copyWith(
          groups: groups,
          contacts: contacts,
          filterContacts: filterContacts,
          pageState: PageState.success,
          isLoading: false,
        );
      },
      onError: (error, stacktrace) => state.copyWith(
        pageCommand: PageCommandMessage.showSuccess(LocaleKey.somethingWentWrong.tr),
        pageState: PageState.success,
        isLoading: false,
      ),
    );
  }

  FutureOr<void> _onChangedKeyword(_OnChangedKeyword event, Emitter<AddContactsState> emit) {
    AddContactsState state = this.state.copyWith();
    final String keyword = event.keyword;
    final List<AddContactRequest> filterContacts;
    if (keyword.isEmpty) {
      filterContacts = [...state.contacts];
    } else {
      filterContacts = [
        ...state.contacts
            .where((element) => element.name.toLowerCase().contains(keyword.toLowerCase()))
            .toList()
      ];
    }
    emit(state.copyWith(keyword: keyword, filterContacts: filterContacts));
  }

  Future<List<AddContactRequest>> _getDeviceContacts() async {
    final bool isGranted = await _permissionManager.checkPermission(PermissionType.Contacts);
    if (isGranted) {
      final contacts = await ContactsService.getContacts();
      return contacts
          .map((e) => AddContactRequest(
                name: e.displayName ?? '',
                email: e.emails?.firstOrNull?.value ?? '',
                phoneNo: e.phones?.firstOrNull?.value ?? '',
              ))
          .toList();
    }
    return [];
  }

  List<AddContactRequest> _combineContacts(
    List<AddContactRequest> contacts,
    List<AddContactRequest> deviceContacts,
  ) {
    final List<AddContactRequest> newContacts = [...contacts];
    for (AddContactRequest contact in deviceContacts) {
      final isExists = newContacts
          .where((e) => e.contactId == contact.contactId || e.phoneNo == contact.phoneNo)
          .isNotEmpty;
      if (!isExists) {
        newContacts.add(contact);
      }
    }
    newContacts.sort((a, b) => a.name.compareTo(b.name));
    return newContacts;
  }

  FutureOr<void> _onChangedContact(_OnChangedContact event, Emitter<AddContactsState> emit) {
    final List<AddContactRequest> contacts = [...state.contacts];
    final int index = contacts.indexWhere((element) =>
        element.name == event.contact.name && element.phoneNo == event.contact.phoneNo);
    if (index >= 0) {
      contacts.replaceRange(index, index + 1, [event.contact]);
      AddContactsState state = this.state.copyWith();
      final String keyword = state.keyword;
      final List<AddContactRequest> filterContacts;
      if (keyword.isEmpty) {
        filterContacts = [...contacts];
      } else {
        filterContacts = [
          ...contacts
              .where((element) => element.name.toLowerCase().contains(keyword.toLowerCase()))
              .toList()
        ];
      }
      emit(state.copyWith(
        contacts: contacts,
        filterContacts: filterContacts,
        pageState: PageState.success,
        isLoading: false,
      ));
    }
  }
}
