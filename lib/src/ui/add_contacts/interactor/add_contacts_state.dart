part of 'add_contacts_bloc.dart';

@freezed
class AddContactsState with _$AddContactsState {
  const AddContactsState._();

  const factory AddContactsState({
    @Default(PageState.loading) PageState pageState,
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
    @Default('') String keyword,
    @Default([]) List<AddContactRequest> contacts,
    @Default([]) List<AddContactRequest> filterContacts,
    @Default([]) List<Group> groups,
  }) = _AddContactsState;
}
