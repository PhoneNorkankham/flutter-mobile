import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter extends TypeConverter<DateTime?, String?> {
  const DateTimeConverter();

  @override
  DateTime? fromSql(String? fromDb) {
    if (fromDb == null || fromDb.isEmpty) {
      return null;
    }
    return DateTime.tryParse(fromDb)?.toLocal();
  }

  @override
  String? toSql(DateTime? value) {
    return value?.toUtc().toIso8601String();
  }
}

class DateTimeJsonConverter extends JsonConverter<DateTime?, String?> {
  const DateTimeJsonConverter();

  @override
  DateTime? fromJson(String? json) {
    if (json == null || json.isEmpty) {
      return null;
    }
    return DateTime.tryParse(json)?.toLocal();
  }

  @override
  String? toJson(DateTime? object) {
    return object?.toUtc().toIso8601String();
  }
}
