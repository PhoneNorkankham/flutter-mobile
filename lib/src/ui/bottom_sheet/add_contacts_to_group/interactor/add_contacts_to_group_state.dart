part of 'add_contacts_to_group_bloc.dart';

@freezed
class AddContactsToGroupState with _$AddContactsToGroupState {
  const AddContactsToGroupState._();

  const factory AddContactsToGroupState({
    @Default(PageState.loading) PageState pageState,
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
    @Default('') String keyword,
    @Default([]) List<ContactRequest> contacts,
    @Default([]) List<ContactRequest> selectedContacts,
    Group? group,
  }) = _AddContactsToGroupState;

  List<ContactRequest> get filterContacts {
    if (keyword.isEmpty) {
      return contacts;
    } else {
      return contacts
          .where((element) => element.name.toLowerCase().contains(keyword.toLowerCase()))
          .toList();
    }
  }
}
