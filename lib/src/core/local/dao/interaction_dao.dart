import 'package:drift/drift.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/local/table/interactions.dart';

part 'interaction_dao.g.dart';

@DriftAccessor(tables: [Interactions])
class InteractionDao extends DatabaseAccessor<AppDatabase> with _$InteractionDaoMixin {
  final AppDatabase db;

  InteractionDao(this.db) : super(db);

  Future<int> insertOrReplace(Interaction entity) => into(interactions).insert(
        entity,
        mode: InsertMode.insertOrReplace,
      );

  Future<List<Interaction>> getInteractions() => select(interactions).get();

  Future<Interaction?> getLastInteractionByContactId(String contactId) =>
      (select(interactions)..where((tbl) => tbl.contactId.equals(contactId)))
          .get()
          .then((value) => value.firstOrNull);

  Future<int> deleteAll() => delete(interactions).go();
}
