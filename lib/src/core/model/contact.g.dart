// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactData _$$_ContactDataFromJson(Map<String, dynamic> json) =>
    _$_ContactData(
      id: json['id'] as String?,
      userId: json['user_id'] as String? ?? '',
      groupId: json['group_id'] as String? ?? '',
      expiration: json['expiration'] == null
          ? null
          : DateTime.parse(json['expiration'] as String),
      dateCreated: json['date_created'] == null
          ? null
          : DateTime.parse(json['date_created'] as String),
    );

Map<String, dynamic> _$$_ContactDataToJson(_$_ContactData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['user_id'] = instance.userId;
  val['group_id'] = instance.groupId;
  writeNotNull('expiration', instance.expiration?.toIso8601String());
  writeNotNull('date_created', instance.dateCreated?.toIso8601String());
  return val;
}
