import 'package:json_annotation/json_annotation.dart';
import 'package:keepup/src/core/model/contact_phone.dart';

class ModelConverter<T> implements JsonConverter<T, dynamic> {
  const ModelConverter();

  @override
  T fromJson(dynamic json) {
    /// Start by checking if json is just a single JSON map or T, not a List
    if (json is T) {
      return json;
    } else if (json is Map<String, dynamic>) {
      try {
        /// Checking if T is of type Model and convert the json to Model as T
        switch (T) {
          case const (ContactPhone):
            return ContactPhone.fromJson(json) as T;
        }
      } catch (e) {
        rethrow;
      }
    }

    /// We didn't recognize this JSON map as one of our model classes, throw an error
    /// so we can add the missing case
    throw ArgumentError.value(
      json,
      'json',
      'T._fromJson cannot handle this JSON payload. Please add a handler to _fromJson.',
    );
  }

  @override
  dynamic toJson(T object) {
    if (object is ContactPhone) {
      return object.toJson();
    } else {
      return object;
    }
  }
}
