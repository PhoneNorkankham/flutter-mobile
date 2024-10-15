import 'package:drift/drift.dart';
import 'package:keepup/src/core/converters/list_converter.dart';
import 'package:keepup/src/enums/frequency_interval_type.dart';

class Groups extends Table {
  TextColumn get id => text()();

  @JsonKey('owner_id')
  TextColumn get ownerId => text().named('owner_id').withDefault(const Constant(''))();

  TextColumn get name => text().withDefault(const Constant(''))();

  TextColumn get description => text().withDefault(const Constant(''))();

  TextColumn get avatar => text().withDefault(const Constant(''))();

  @JsonKey('category_id')
  TextColumn get categoryId => text().withDefault(const Constant(''))();

  @JsonKey('frequency_interval')
  TextColumn get frequencyInterval => textEnum<FrequencyIntervalType>()
      .named('frequency_interval')
      .withDefault(Constant(FrequencyIntervalType.none.name))();

  TextColumn get contacts =>
      text().map(const ListConverter<dynamic>()).withDefault(const Constant('[]'))();

  @JsonKey('date_created')
  DateTimeColumn get dateCreated => dateTime().named('date_created').nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
