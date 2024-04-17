import 'package:keepup/src/core/converters/model_converter.dart';
import 'package:keepup/src/core/model/meta.dart';

class PaginatedListResponse<T> {
  String message;

  List<T> data;

  Meta meta;

  PaginatedListResponse({this.message = '', required this.data, required this.meta});

  factory PaginatedListResponse.fromJson(Map<String, dynamic> json) => PaginatedListResponse<T>(
        message: json['message'] as String? ?? '',
        data: (json['data'] as List<dynamic>?)?.map(ModelConverter<T>().fromJson).toList() ?? [],
        meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      );
}
