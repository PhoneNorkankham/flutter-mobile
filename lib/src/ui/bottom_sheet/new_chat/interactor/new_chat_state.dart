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
    @Default(0) double interval,
    @Default(AppConstants.defaultEveryDays) List<ChoiceEveryDayData> everyDays,
    @Default(ContactRequest()) ContactRequest request,
    File? avatar,
  }) = _NewChatState;

  bool get enabledCreateNewGroupButton => false;

  bool get enabledCreateNewContactButton => true;
}
