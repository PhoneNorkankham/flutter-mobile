import 'package:drift/drift.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';

class DateTimeConverter extends TypeConverter<DateTime, String> {
  @override
  DateTime fromSql(String fromDb) {
    if (fromDb.isEmpty) {
      return DateTime.now();
    }
    return DateTime.parse(fromDb);
  }

  @override
  String toSql(DateTime value) => value.generalDateText;
}
