part of 'add_contacts_bloc.dart';

@freezed
class AddContactsState with _$AddContactsState {
  const AddContactsState._();

  const factory AddContactsState({
    @Default(PageState.loading) PageState pageState,
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
    @Default('') String title,
    @Default('') String keyword,
    @Default([]) List<ContactRequest> contacts,
    @Default([]) List<Group> groups,
  }) = _AddContactsState;

  List<ContactRequest> getFilterContacts() {
    final List<ContactRequest> filterContacts;
    if (keyword.isEmpty) {
      filterContacts = [...contacts];
    } else {
      filterContacts = [
        ...contacts
            .where((element) => element.name.toLowerCase().contains(keyword.toLowerCase()))
            .toList()
      ];
    }
    return filterContacts;
  }

  bool get enabledDoneButton {
    final bool enabled = contacts.where((e) => e.groupId.isNotEmpty).isNotEmpty;
    return enabled && !isLoading;
  }
}
