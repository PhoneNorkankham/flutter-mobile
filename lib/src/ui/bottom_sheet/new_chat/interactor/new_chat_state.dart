part of 'new_chat_bloc.dart';

@freezed
class NewChatState with _$NewChatState {
  const NewChatState._();

  const factory NewChatState({
    @Default(PageState.loading) PageState pageState,
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
    @Default(NewChatTabType.newChat) NewChatTabType tabType,
    @Default('') String keyword,
    @Default('') String groupName,
    @Default([]) List<Contact> contacts,
    @Default([]) List<Contact> selectedContacts,
    @Default([]) List<Contact> filterContacts,
  }) = _NewChatState;

  bool get enabledCreateNewGroupButton => selectedContacts.isNotEmpty && groupName.isNotEmpty;

  bool get enabledCreateNewContactButton => true;
}
