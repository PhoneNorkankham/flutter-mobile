import 'package:drift/drift.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';
import 'package:keepup/src/extensions/string_extensions.dart';

class DateTimeNullableConverter extends TypeConverter<DateTime?, String> {
  @override
  DateTime? fromSql(String fromDb) => fromDb.isNullOrEmpty ? null : DateTime.parse(fromDb);

  @override
  String toSql(DateTime? value) => value?.generalDateText ?? '';
}
