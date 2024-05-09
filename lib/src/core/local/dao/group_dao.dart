import 'package:drift/drift.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/local/table/groups.dart';

part 'group_dao.g.dart';

@DriftAccessor(tables: [Groups])
class GroupDao extends DatabaseAccessor<AppDatabase> with _$GroupDaoMixin {
  final AppDatabase db;

  GroupDao(this.db) : super(db);

  Future<int> insert(Group group) => into(groups).insert(group, mode: InsertMode.insertOrReplace);

  Future<List<Group>> getGroups() => select(groups).get();

  Stream<List<Group>> watchGroups() => select(groups).watch();

  Future<int> deleteAll() => delete(groups).go();
}
