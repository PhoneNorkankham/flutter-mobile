import 'package:floor/floor.dart';
import 'package:keepup/src/extensions/string_extensions.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';

class DateTimeNullableConverter extends TypeConverter<DateTime?, String> {
  @override
  DateTime? decode(String? databaseValue) =>
      databaseValue.isNullOrEmpty ? null : DateTime.parse(databaseValue!);

  @override
  String encode(DateTime? value) => value?.generalDateText ?? '';
}
