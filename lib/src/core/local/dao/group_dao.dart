import 'package:drift/drift.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/local/table/groups.dart';

part 'group_dao.g.dart';

@DriftAccessor(tables: [Groups])
class GroupDao extends DatabaseAccessor<AppDatabase> with _$GroupDaoMixin {
  final AppDatabase db;

  GroupDao(this.db) : super(db);

  Future<int> insertOrReplace(Group group) =>
      into(groups).insert(group, mode: InsertMode.insertOrReplace);

  Future<List<Group>> getGroups() =>
      (select(groups)..orderBy([(u) => OrderingTerm(expression: u.dateCreated)])).get();

  Stream<List<Group>> watchGroups() =>
      (select(groups)..orderBy([(u) => OrderingTerm(expression: u.dateCreated)])).watch();

  Future<Group?> getGroup(String groupId) =>
      (select(groups)..where((tbl) => tbl.id.equals(groupId)))
          .get()
          .then((value) => value.firstOrNull);

  Future<int> deleteGroup(String groupId) =>
      (delete(groups)..where((tbl) => tbl.id.equals(groupId))).go();

  Future<int> deleteAll() => delete(groups).go();

  Future<void> deleteContactInJoinedGroups(String contactId) async {
    // Get all groups
    final List<Group> groups = await getGroups();

    // Get all joined groups
    final List<Group> joinedGroups =
        groups.where((element) => element.contacts.contains(contactId)).toList();

    // Get all leave groups
    final List<Group> leaveGroups = joinedGroups.map((element) {
      final List<String> contactIds = [...element.contacts]
        ..removeWhere((element) => element == contactId);
      return element.copyWith(contacts: contactIds);
    }).toList();

    // Update groups
    for (Group group in leaveGroups) {
      await insertOrReplace(group);
    }
  }
}
