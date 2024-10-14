import 'package:drift/drift.dart';
import 'package:keepup/src/core/converters/list_converter.dart';

class Contacts extends Table {
  TextColumn get id => text()();

  @JsonKey('owner_id')
  TextColumn get ownerId => text().named('owner_id').withDefault(const Constant(''))();

  @JsonKey('group_id')
  TextColumn get groupId => text().named('group_id').withDefault(const Constant(''))();

  @JsonKey('group_name')
  TextColumn get groupName => text().named('group_name').nullable()();

  TextColumn get avatar => text().withDefault(const Constant(''))();

  TextColumn get name => text().withDefault(const Constant(''))();

  TextColumn get email => text().withDefault(const Constant(''))();

  @JsonKey('phone_no')
  TextColumn get phoneNo => text().named('phone_no').withDefault(const Constant(''))();

  TextColumn get phones =>
      text().map(const ListConverter<dynamic>()).withDefault(const Constant('[]'))();

  @JsonKey('date_of_birth')
  DateTimeColumn get dateOfBirth => dateTime().named('date_of_birth').nullable()();

  DateTimeColumn get expiration => dateTime().named('expiration').nullable()();

  @JsonKey('date_created')
  DateTimeColumn get dateCreated => dateTime().named('date_created').nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
