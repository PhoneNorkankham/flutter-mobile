import 'package:drift/drift.dart';
import 'package:keepup/src/core/converters/date_time_converter.dart';

class Contacts extends Table {
  TextColumn get id => text()();

  @JsonKey('owner_id')
  TextColumn get ownerId => text().named('owner_id')();

  TextColumn get avatar => text().withDefault(const Constant(''))();

  TextColumn get name => text().withDefault(const Constant(''))();

  TextColumn get email => text().withDefault(const Constant(''))();

  @JsonKey('phone_no')
  TextColumn get phoneNo => text().named('phone_no').withDefault(const Constant(''))();

  @JsonKey('date_of_birth')
  TextColumn get dateOfBirth =>
      text().named('date_of_birth').map(const DateTimeConverter()).nullable()();

  TextColumn get expiration => text().map(const DateTimeConverter()).nullable()();

  @JsonKey('date_created')
  TextColumn get dateCreated =>
      text().named('date_created').map(const DateTimeConverter()).nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
