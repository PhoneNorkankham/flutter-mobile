part of 'new_chat_bloc.dart';

@freezed
class NewChatState with _$NewChatState {
  const NewChatState._();

  const factory NewChatState({
    @Default(PageState.loading) PageState pageState,
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
    @Default('') String keyword,
    @Default([]) List<Contact> contacts,
  }) = _NewChatState;

  List<Contact> get filterContacts {
    if (keyword.isEmpty) {
      return contacts;
    } else {
      return contacts
          .where((element) => element.name.toLowerCase().contains(keyword.toLowerCase()))
          .toList();
    }
  }
}
