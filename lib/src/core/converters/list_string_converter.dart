import 'dart:convert';

import 'package:drift/drift.dart';

class ListStringConverter extends TypeConverter<List<dynamic>, String> {
  const ListStringConverter();

  @override
  List<dynamic> fromSql(String fromDb) {
    if (fromDb.isEmpty) return [];
    final data = jsonDecode(fromDb) as List;
    return data.map((e) => e.toString()).toList();
  }

  @override
  String toSql(List<dynamic> value) {
    return jsonEncode(value);
  }
}
