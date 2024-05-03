import 'package:drift/drift.dart';
import 'package:keepup/src/core/converters/list_string_converter.dart';

class Groups extends Table {
  TextColumn get id => text()();

  TextColumn get name => text().withDefault(const Constant(''))();

  TextColumn get description => text().withDefault(const Constant(''))();

  TextColumn get avatar => text().withDefault(const Constant(''))();

  DateTimeColumn get frequencyInterval => dateTime().named('frequency_interval').nullable()();

  TextColumn get contacts => text().map(const ListStringConverter()).nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
