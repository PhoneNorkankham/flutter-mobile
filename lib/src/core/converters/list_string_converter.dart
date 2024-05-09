import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ListStringConverter extends TypeConverter<List<dynamic>, String> {
  const ListStringConverter();

  @override
  List<dynamic> fromSql(String fromDb) {
    if (fromDb.isEmpty) return [];
    return jsonDecode(fromDb) as List;
  }

  @override
  String toSql(List<dynamic> value) {
    return jsonEncode(value);
  }
}

class ListStringJsonConverter extends JsonConverter<List<dynamic>, String> {
  const ListStringJsonConverter();

  @override
  List<dynamic> fromJson(String json) {
    if (json.isEmpty) return [];
    return jsonDecode(json) as List;
  }

  @override
  String toJson(List<dynamic> object) {
    return jsonEncode(object);
  }
}
