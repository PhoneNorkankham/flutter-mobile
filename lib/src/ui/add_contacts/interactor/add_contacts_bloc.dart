import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:contacts_service/contacts_service.dart' hide Contact;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/managers/permission_manager.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/add_contacts/mappers/add_contacts_state_mapper.dart';
import 'package:keepup/src/ui/add_contacts/usecases/add_contacts_use_case.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';

part 'add_contacts_bloc.freezed.dart';
part 'add_contacts_event.dart';
part 'add_contacts_state.dart';

class AddContactsBloc extends Bloc<AddContactsEvent, AddContactsState> {
  final PermissionManager _permissionManager;
  final SupabaseRepository _supabaseRepository;
  final AddContactsUseCase _addContactsUseCase;
  final AddContactsStateMapper _addContactsStateMapper;

  AddContactsBloc(
    this._permissionManager,
    this._supabaseRepository,
    this._addContactsUseCase,
    this._addContactsStateMapper,
  ) : super(const AddContactsState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedKeyword>((event, emit) => emit(state.copyWith(keyword: event.keyword)));
    on<_OnChangedContact>(_onChangedContact);
    on<_OnDonePressed>(_onDonePressed);
  }

  FutureOr<void> _initial(_Initial event, Emitter<AddContactsState> emit) async {
    await _supabaseRepository.getContacts();
    await _supabaseRepository.getGroups();
    final List<Group> groups = await _supabaseRepository.getDBGroups();
    final List<ContactRequest> deviceContacts = await _getDeviceContacts();
    await emit.forEach<List<ContactRequest>>(
      _supabaseRepository.watchContacts().map((event) => event.map((e) {
            final contact = ContactRequest.fromJson(e.toJson());
            final List<Group> joinedGroups =
                groups.where((element) => element.contacts.contains(contact.contactId)).toList();
            final List<String> groupIds = joinedGroups.map((e) => e.id).toList();
            return contact.copyWith(groupIds: groupIds);
          }).toList()),
      onData: (contacts) {
        contacts = _combineContacts(contacts, deviceContacts);
        return state.copyWith(
          groups: groups,
          contacts: contacts,
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

  Future<List<ContactRequest>> _getDeviceContacts() async {
    final bool isGranted = await _permissionManager.checkPermission(PermissionType.Contacts);
    if (isGranted) {
      final contacts = await ContactsService.getContacts();
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

  FutureOr<void> _onChangedContact(_OnChangedContact event, Emitter<AddContactsState> emit) {
    final List<ContactRequest> contacts = [...state.contacts];
    final int index = contacts.indexWhere((element) =>
        element.contactId == event.contact.contactId &&
        element.name == event.contact.name &&
        element.phoneNo == event.contact.phoneNo);
    if (index >= 0) {
      contacts.replaceRange(index, index + 1, [event.contact]);
      emit(state.copyWith(
        contacts: contacts,
        pageState: PageState.success,
        isLoading: false,
      ));
    }
  }

  FutureOr<void> _onDonePressed(_OnDonePressed event, Emitter<AddContactsState> emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await _addContactsUseCase.run(state.contacts);
    emit(_addContactsStateMapper.mapResultToState(state, result));
  }
}
