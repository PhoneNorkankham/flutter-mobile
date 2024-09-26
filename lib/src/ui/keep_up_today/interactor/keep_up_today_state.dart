part of 'keep_up_today_bloc.dart';

@freezed
class KeepUpTodayState with _$KeepUpTodayState {
  const KeepUpTodayState._();

  const factory KeepUpTodayState({
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
    @Default([]) List<Group> groups,
    @Default([]) List<Contact> contacts,
    @Default([]) List<Category> categories,
    @Default(Category(id: '', name: 'All')) Category selectedCategory,
  }) = _KeepUpTodayState;

  List<Contact> get filteredContacts {
    final List<Contact> contacts = this.contacts.toKeepUpToday();
    return _filterContacts(contacts);
  }

  List<Contact> _filterContacts(List<Contact> contacts) {
    if (selectedCategory.id.isEmpty) {
      return contacts;
    } else {
      final List<Group> groups = _getGroupsByContacts(contacts)
          .where((element) => element.categoryId == selectedCategory.id)
          .toList();
      return contacts
          .where((contact) => groups.where((group) => group.id == contact.groupId).isNotEmpty)
          .toList();
    }
  }

  List<Group> get filteredGroups => _getGroupsByContacts(filteredContacts);

  List<Group> _getGroupsByContacts(List<Contact> contacts) {
    List<String> groupIds = contacts.map((e) => e.groupId).toSet().toList();
    final List<Group> groups = [];
    for (String groupId in groupIds) {
      final Group? group = this.groups.where((group) => group.id == groupId).firstOrNull;
      if (group != null && !groups.contains(group)) {
        groups.add(group);
      }
    }
    return groups;
  }
}
