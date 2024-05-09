import 'package:drift/drift.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/local/table/contacts.dart';

part 'contact_dao.g.dart';

@DriftAccessor(tables: [Contacts])
class ContactDao extends DatabaseAccessor<AppDatabase> with _$ContactDaoMixin {
  final AppDatabase db;

  ContactDao(this.db) : super(db);

  Future<int> insertContact(Contact contact) => into(contacts).insert(
        contact,
        mode: InsertMode.insertOrReplace,
      );

  Future<bool> updateContact(Contact contact) => update(contacts).replace(contact);

  Future<List<Contact>> getContacts() => select(contacts).get();

  Future<List<Contact>> getAllContactByIds(List<String> contactIds) =>
      (select(contacts)..where((tbl) => tbl.id.isIn(contactIds))).get();

  Stream<List<Contact>> watchContacts() => select(contacts).watch();

  Future<Contact?> getContact(String contactId) =>
      (select(contacts)..where((tbl) => tbl.id.equals(contactId)))
          .get()
          .then((value) => value.firstOrNull);

  Future<int> deleteAll() => delete(contacts).go();
}
