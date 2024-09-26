import 'package:drift/drift.dart';

class Categories extends Table {
  TextColumn get id => text()();

  TextColumn get name => text().withDefault(const Constant(''))();

  @JsonKey('created_at')
  DateTimeColumn get createdAt => dateTime().named('created_at').nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
