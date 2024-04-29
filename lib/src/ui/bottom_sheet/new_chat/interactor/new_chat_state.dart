part of 'new_chat_bloc.dart';

@freezed
class NewChatState with _$NewChatState {
  const NewChatState._();

  const factory NewChatState({
    PageCommand? pageCommand,
    @Default(NewChatTabType.newChat) NewChatTabType tabType,
    @Default('') String keyword,
    @Default([]) List<Contact> contacts,
    @Default([]) List<Contact> selectedContacts,
    @Default([]) List<Contact> filterContacts,
  }) = _NewChatState;
}
