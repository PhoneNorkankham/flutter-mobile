part of 'new_group_bloc.dart';

@freezed
class NewGroupEvent with _$NewGroupEvent {
  const factory NewGroupEvent.initial() = _Initial;

  const factory NewGroupEvent.clearPageCommand() = _ClearPageCommand;

  const factory NewGroupEvent.onSelectedContact(Contact contact) = _OnSelectedContact;

  const factory NewGroupEvent.onRemovedContact(Contact contact) = _OnRemovedContact;

  const factory NewGroupEvent.onChangedGroupName(String name) = _OnChangedGroupName;

  const factory NewGroupEvent.onCreateNewGroup() = _OnCreateNewGroup;

  const factory NewGroupEvent.onSelectedContacts(List<Contact> contacts) = _OnSelectedContacts;

  const factory NewGroupEvent.onFrequencyIntervalChanged(
    FrequencyIntervalType frequencyIntervalType,
  ) = _OnFrequencyIntervalChanged;

  const factory NewGroupEvent.onChangedAvatar(File file) = _OnChangedAvatar;
}
