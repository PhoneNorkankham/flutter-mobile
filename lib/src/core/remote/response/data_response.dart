import 'package:keepup/src/core/converters/model_converter.dart';

class DataResponse<T> {
  String message;
  T data;

  DataResponse({this.message = '', required this.data});

  factory DataResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] == null || json['data'] is! Map<String, dynamic>) {
      throw Exception("Invalid Data");
    }
    return DataResponse<T>(
      message: json['message'] as String? ?? '',
      data: ModelConverter<T>().fromJson(json['data'] as Map<String, dynamic>),
    );
  }
}
