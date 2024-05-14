import 'package:drift/drift.dart';
import 'package:keepup/src/core/converters/list_string_converter.dart';

class Groups extends Table {
  TextColumn get id => text()();

  @JsonKey('owner_id')
  TextColumn get ownerId => text().named('owner_id')();

  TextColumn get name => text().withDefault(const Constant(''))();

  TextColumn get description => text().withDefault(const Constant(''))();

  TextColumn get avatar => text().withDefault(const Constant(''))();

  @JsonKey('frequency_interval')
  IntColumn get frequencyInterval =>
      integer().named('frequency_interval').withDefault(const Constant(0))();

  TextColumn get contacts =>
      text().map(const ListStringConverter()).withDefault(const Constant('[]'))();

  @override
  Set<Column> get primaryKey => {id};
}
