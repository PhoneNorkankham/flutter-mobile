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
    @Default([]) List<Contact> contacts,
    @Default([]) List<Contact> selectedContacts,
    @Default([]) List<Contact> filterContacts,
    Group? group,
    @Default(ContactRequest()) ContactRequest contactRequest,
    @Default(GroupRequest()) GroupRequest groupRequest,
    File? avatar,
  }) = _NewChatState;

  bool get enabledCreateNewGroupButton => groupRequest.isValidate;

  bool get enabledCreateNewContactButton => contactRequest.isValidate;
}
