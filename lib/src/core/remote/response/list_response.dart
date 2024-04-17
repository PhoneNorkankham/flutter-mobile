import 'package:keepup/src/core/converters/model_converter.dart';

class ListResponse<T> {
  String message;

  List<T> data;

  ListResponse({this.message = '', required this.data});

  factory ListResponse.fromJson(Map<String, dynamic> json) {
    final data = json['data'];
    if (data is! List<dynamic>) throw Exception('Invalid List Data');
    return ListResponse<T>(
      message: json['message'] as String? ?? '',
      data: data.map(ModelConverter<T>().fromJson).toList(),
    );
  }
}
