// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRequestImpl _$$UserRequestImplFromJson(Map<String, dynamic> json) =>
    _$UserRequestImpl(
      id: json['id'] as String,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      dateCreated: json['date_created'] == null
          ? null
          : DateTime.parse(json['date_created'] as String),
      dateLoggedIn: json['date_logged_in'] == null
          ? null
          : DateTime.parse(json['date_logged_in'] as String),
    );

Map<String, dynamic> _$$UserRequestImplToJson(_$UserRequestImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('avatar', instance.avatar);
  writeNotNull('date_created', instance.dateCreated?.toIso8601String());
  writeNotNull('date_logged_in', instance.dateLoggedIn?.toIso8601String());
  return val;
}
