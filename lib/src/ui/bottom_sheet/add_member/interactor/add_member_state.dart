part of 'add_member_bloc.dart';

@freezed
class AddMemberState with _$AddMemberState {
  const AddMemberState._();

  const factory AddMemberState({
    PageCommand? pageCommand,
    @Default(PageState.loading) PageState pageState,
    @Default(false) bool isLoading,
    @Default('') String keyword,
    @Default('') String groupId,
    @Default([]) List<Contact> contacts,
    @Default([]) List<Contact> selectedContacts,
    File? avatar,
  }) = _AddMemberState;

  List<Contact> getFilterContacts() {
    final List<Contact> filterContacts;
    if (keyword.isEmpty) {
      filterContacts = [...contacts];
    } else {
      filterContacts = [
        ...contacts
            .where((element) => element.name.toLowerCase().contains(keyword.toLowerCase()))
            .toList()
      ];
    }
    return filterContacts..removeWhere((element) => selectedContacts.contains(element));
  }
}
