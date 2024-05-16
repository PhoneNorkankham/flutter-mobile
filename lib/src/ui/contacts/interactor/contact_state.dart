part of 'contact_bloc.dart';

@freezed
class ContactState with _$ContactState {
  const ContactState._();

  const factory ContactState({
    @Default(PageState.loading) PageState pageState,
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
    @Default('') String keyword,
    @Default([]) List<Contact> contacts,
  }) = _ContactState;

  List<Contact> get filterContacts {
    if (keyword.isNotEmpty) {
      return contacts
          .where((element) => element.name.toLowerCase().contains(keyword.toLowerCase()))
          .toList();
    } else {
      return contacts;
    }
  }
}
