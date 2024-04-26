part of 'new_chat_bloc.dart';

@freezed
class NewChatState with _$NewChatState {
  const NewChatState._();

  const factory NewChatState({
    PageCommand? pageCommand,
    @Default(NewChatType.newChat) NewChatType type,
    @Default([]) List<Contact> contacts,
  }) = _NewChatState;
}
