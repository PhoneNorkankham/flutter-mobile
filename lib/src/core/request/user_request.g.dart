// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRequest _$$_UserRequestFromJson(Map<String, dynamic> json) =>
    _$_UserRequest(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      dateCreated: json['date_created'] == null
          ? null
          : DateTime.parse(json['date_created'] as String),
      dateLoggedIn: json['date_logged_in'] == null
          ? null
          : DateTime.parse(json['date_logged_in'] as String),
    );

Map<String, dynamic> _$$_UserRequestToJson(_$_UserRequest instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('date_created', instance.dateCreated?.toIso8601String());
  writeNotNull('date_logged_in', instance.dateLoggedIn?.toIso8601String());
  return val;
}
