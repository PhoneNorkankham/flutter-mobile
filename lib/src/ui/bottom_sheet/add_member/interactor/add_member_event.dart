part of 'add_member_bloc.dart';

@freezed
class AddMemberEvent with _$AddMemberEvent {
  const factory AddMemberEvent.initial(String groupId, List<Contact> selectedContacts) = _Initial;

  const factory AddMemberEvent.clearPageCommand() = _ClearPageCommand;

  const factory AddMemberEvent.onChangedKeyword(String keyword) = _OnChangedKeyword;

  const factory AddMemberEvent.onSelectedContact(Contact contact) = _OnSelectedContact;

  const factory AddMemberEvent.onRemovedContact(Contact contact) = _OnRemovedContact;
}
