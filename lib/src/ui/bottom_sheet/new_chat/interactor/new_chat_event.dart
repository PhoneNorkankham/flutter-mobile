part of 'new_chat_bloc.dart';

@freezed
class NewChatEvent with _$NewChatEvent {
  const factory NewChatEvent.initial() = _Initial;

  const factory NewChatEvent.clearPageCommand() = _ClearPageCommand;

  const factory NewChatEvent.onChangedTabType(NewChatTabType type) = _OnChangedTabType;

  const factory NewChatEvent.onChangedKeyword(String keyword) = _OnChangedKeyword;

  const factory NewChatEvent.onSelectedContact(Contact contact) = _OnSelectedContact;

  const factory NewChatEvent.onRemovedContact(Contact contact) = _OnRemovedContact;
}
