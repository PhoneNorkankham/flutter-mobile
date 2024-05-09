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
    @Default([]) List<Contact> filterContacts,
  }) = _ContactState;
}
