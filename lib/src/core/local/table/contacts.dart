import 'package:drift/drift.dart';
import 'package:keepup/src/core/converters/list_string_converter.dart';

class Contacts extends Table {
  TextColumn get id => text()();

  @JsonKey('owner_id')
  TextColumn get ownerId => text().named('owner_id')();

  TextColumn get avatar => text().withDefault(const Constant(''))();

  TextColumn get name => text().withDefault(const Constant(''))();

  TextColumn get email => text().withDefault(const Constant(''))();

  TextColumn get frequency =>
      text().map(const ListStringConverter()).withDefault(const Constant('[]'))();

  @JsonKey('phone_no')
  TextColumn get phoneNo => text().named('phone_no').withDefault(const Constant(''))();

  @JsonKey('date_of_birth')
  DateTimeColumn get dateOfBirth => dateTime().named('date_of_birth').nullable()();

  DateTimeColumn get expiration => dateTime().named('expiration').nullable()();

  @JsonKey('date_created')
  DateTimeColumn get dateCreated => dateTime().named('date_created').nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
