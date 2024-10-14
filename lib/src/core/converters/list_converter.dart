import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/core/converters/model_converter.dart';

class ListConverter<Type> extends TypeConverter<List<Type>, String> {
  const ListConverter();

  @override
  List<Type> fromSql(String fromDb) {
    if (fromDb.isEmpty) return [];
    final list = jsonDecode(fromDb) as List;
    return list.map(ModelConverter<Type>().fromJson).toList();
  }

  @override
  String toSql(List<Type> value) {
    return jsonEncode(value);
  }
}

class ListJsonConverter<Type> extends JsonConverter<List<Type>, String> {
  const ListJsonConverter();

  @override
  List<Type> fromJson(String json) {
    if (json.isEmpty) return [];
    final list = jsonDecode(json) as List;
    return list.map(ModelConverter<Type>().fromJson).toList();
  }

  @override
  String toJson(List<Type> object) {
    return jsonEncode(object);
  }
}
