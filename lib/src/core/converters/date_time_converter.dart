import 'package:json_annotation/json_annotation.dart';

class DateTimeJsonConverter extends JsonConverter<DateTime?, dynamic> {
  const DateTimeJsonConverter();

  @override
  DateTime? fromJson(dynamic json) {
    if (json is String) {
      return DateTime.tryParse(json);
    } else if (json is int) {
      return DateTime.fromMillisecondsSinceEpoch(json);
    } else {
      return null;
    }
  }

  @override
  dynamic toJson(DateTime? object) {
    return object?.toUtc().toIso8601String();
  }
}
