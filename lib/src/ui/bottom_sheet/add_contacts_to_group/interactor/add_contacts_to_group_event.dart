part of 'add_contacts_to_group_bloc.dart';

@freezed
class AddContactsToGroupEvent with _$AddContactsToGroupEvent {
  const factory AddContactsToGroupEvent.initial(Group group) = _Initial;

  const factory AddContactsToGroupEvent.clearPageCommand() = _ClearPageCommand;

  const factory AddContactsToGroupEvent.onChangedKeyword(String keyword) = _OnChangedKeyword;

  const factory AddContactsToGroupEvent.onSelectedContact(ContactRequest contact) =
      _OnSelectedContact;

  const factory AddContactsToGroupEvent.onRemovedContact(ContactRequest contact) =
      _OnRemovedContact;

  const factory AddContactsToGroupEvent.onAddContactsToGroup() = _OnAddContactsToGroup;
}
