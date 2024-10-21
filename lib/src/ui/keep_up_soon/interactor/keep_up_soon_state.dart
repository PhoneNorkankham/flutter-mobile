part of 'keep_up_soon_bloc.dart';

@freezed
class KeepUpSoonState with _$KeepUpSoonState {
  const KeepUpSoonState._();

  const factory KeepUpSoonState({
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
    @Default(KeepUpSoonType.individual) KeepUpSoonType type,
    @Default([]) List<Group> groups,
    @Default([]) List<Contact> contacts,
    @Default([]) List<Category> categories,
    @Default(Category(id: '', name: AppConstants.allCategories)) Category selectedCategory,
  }) = _KeepUpSoonState;

  List<Contact> get keepupSoonContacts {
    final List<Contact> contacts = this.contacts.toKeepUpSoon();
    return _filterContacts(contacts);
  }

  List<Contact> get weekContacts {
    final List<Contact> contacts = this.contacts.toKeepUpInAWeek();
    return _filterContacts(contacts);
  }

  List<Contact> get monthContacts {
    final List<Contact> contacts = this.contacts.toKeepUpInAMonth();
    return _filterContacts(contacts);
  }

  List<Group> getGroupsByContacts(List<Contact> contacts) {
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

  List<Contact> _filterContacts(List<Contact> contacts) {
    if (selectedCategory.id.isEmpty) {
      return contacts;
    } else {
      final List<Group> groups = getGroupsByContacts(contacts)
          .where((element) => element.categoryId == selectedCategory.id)
          .toList();
      return contacts
          .where((contact) => groups.where((group) => group.id == contact.groupId).isNotEmpty)
          .toList();
    }
  }
}
