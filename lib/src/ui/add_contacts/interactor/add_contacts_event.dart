part of 'add_contacts_bloc.dart';

@freezed
class AddContactsEvent with _$AddContactsEvent {
  const factory AddContactsEvent.initial() = _Initial;

  const factory AddContactsEvent.clearPageCommand() = _ClearPageCommand;

  const factory AddContactsEvent.onChangedKeyword(String keyword) = _OnChangedKeyword;

  const factory AddContactsEvent.onChangedContact(ContactRequest contact) = _OnChangedContact;

  const factory AddContactsEvent.onDonePressed() = _OnDonePressed;
}
