import 'package:drift/drift.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/local/table/contacts.dart';
import 'package:keepup/src/extensions/contact_extensions.dart';

part 'contact_dao.g.dart';

@DriftAccessor(tables: [Contacts])
class ContactDao extends DatabaseAccessor<AppDatabase> with _$ContactDaoMixin {
  final AppDatabase db;

  ContactDao(this.db) : super(db);

  Future<int> insertOrReplaceContact(Contact contact) => into(contacts).insert(
        contact,
        mode: InsertMode.insertOrReplace,
      );

  Future<void> insertAllOnConflictUpdate(List<Contact> entities) =>
      batch((batch) => batch.insertAllOnConflictUpdate(contacts, entities));

  Future<List<Contact>> getContacts() =>
      (select(contacts)..orderBy([(u) => OrderingTerm(expression: u.dateCreated)])).get();

  Future<List<Contact>> getAllContactByIds(List<String> contactIds) => (select(contacts)
        ..orderBy([(u) => OrderingTerm(expression: u.dateCreated)])
        ..where((tbl) => tbl.id.isIn(contactIds)))
      .get();

  Stream<List<Contact>> watchContacts() =>
      (select(contacts)..orderBy([(u) => OrderingTerm(expression: u.dateCreated)])).watch();

  Future<Contact?> getContact(String contactId) =>
      (select(contacts)..where((tbl) => tbl.id.equals(contactId)))
          .get()
          .then((value) => value.firstOrNull);

  Future<int> deleteContact(String contactId) =>
      (delete(contacts)..where((tbl) => tbl.id.equals(contactId))).go();

  Future<int> deleteAll() => delete(contacts).go();

  Future<List<Contact>> getTodayContacts() =>
      getContacts().then((contacts) => contacts.toKeepUpToday());

  Stream<List<Contact>> watchTodayContacts() =>
      watchContacts().map((contacts) => contacts.toKeepUpToday());
}
