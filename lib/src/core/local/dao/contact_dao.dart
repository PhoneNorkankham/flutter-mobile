import 'package:drift/drift.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/local/table/contacts.dart';

part 'contact_dao.g.dart';

@DriftAccessor(tables: [Contacts])
class ContactDao extends DatabaseAccessor<AppDatabase> with _$ContactDaoMixin {
  final AppDatabase db;

  ContactDao(this.db) : super(db);

  Future<int> insert(Contact contact) => into(contacts).insert(
        contact,
        mode: InsertMode.insertOrReplace,
      );

  Future<List<Contact>> getContacts() => select(contacts).get();

  Stream<List<Contact>> watchContacts() => select(contacts).watch();

  Future<int> deleteAll() => delete(contacts).go();
}
