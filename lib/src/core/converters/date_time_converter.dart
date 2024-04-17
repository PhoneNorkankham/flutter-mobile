import 'package:floor/floor.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';

class DateTimeConverter extends TypeConverter<DateTime, String> {
  @override
  DateTime decode(String databaseValue) {
    if (databaseValue.isEmpty) {
      return DateTime.now();
    }
    return DateTime.parse(databaseValue);
  }

  @override
  String encode(DateTime value) => value.generalDateText;
}
