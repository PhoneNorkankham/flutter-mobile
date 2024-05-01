// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactRequest _$$_ContactRequestFromJson(Map<String, dynamic> json) =>
    _$_ContactRequest(
      userId: json['user_id'] as String? ?? '',
      groupId: json['group_id'] as String? ?? '',
      expiration: json['expiration'] == null
          ? null
          : DateTime.parse(json['expiration'] as String),
      dateCreated: json['date_created'] == null
          ? null
          : DateTime.parse(json['date_created'] as String),
    );

Map<String, dynamic> _$$_ContactRequestToJson(_$_ContactRequest instance) {
  final val = <String, dynamic>{
    'user_id': instance.userId,
    'group_id': instance.groupId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('expiration', instance.expiration?.toIso8601String());
  writeNotNull('date_created', instance.dateCreated?.toIso8601String());
  return val;
}
