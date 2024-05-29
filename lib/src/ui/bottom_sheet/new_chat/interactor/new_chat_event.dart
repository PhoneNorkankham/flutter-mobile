part of 'new_chat_bloc.dart';

@freezed
class NewChatEvent with _$NewChatEvent {
  const factory NewChatEvent.initial() = _Initial;

  const factory NewChatEvent.clearPageCommand() = _ClearPageCommand;

  const factory NewChatEvent.onChangedTabType(NewChatTabType type) = _OnChangedTabType;

  const factory NewChatEvent.onChangedKeyword(String keyword) = _OnChangedKeyword;

  const factory NewChatEvent.onSelectedGroup(Group group) = _OnSelectedGroup;

  const factory NewChatEvent.onSelectedContact(ContactRequest contact) = _OnSelectedContact;

  const factory NewChatEvent.onRemovedContact(ContactRequest contact) = _OnRemovedContact;

  const factory NewChatEvent.onChangedGroupName(String name) = _OnChangedGroupName;

  const factory NewChatEvent.onCreateNewGroup() = _OnCreateNewGroup;

  const factory NewChatEvent.onAddContactsToGroup() = _OnAddContactsToGroup;

  const factory NewChatEvent.onCreateNewContact() = _OnCreateNewContact;

  const factory NewChatEvent.onFrequencyIntervalChanged(
    FrequencyIntervalType frequencyIntervalType,
  ) = _OnFrequencyIntervalChanged;

  const factory NewChatEvent.onInputChanged(
    NewChatInputType inputType,
    String value,
  ) = _OnInputChanged;

  const factory NewChatEvent.onChangedAvatar(File file) = _OnChangedAvatar;
}
