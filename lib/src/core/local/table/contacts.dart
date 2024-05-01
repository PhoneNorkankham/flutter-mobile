import 'package:drift/drift.dart';

class Contacts extends Table {
  TextColumn get id => text()();

  TextColumn get groupId => text().named('group_id')();

  DateTimeColumn get expiration => dateTime().nullable()();

  DateTimeColumn get dateCreated => dateTime().named('date_created').nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
