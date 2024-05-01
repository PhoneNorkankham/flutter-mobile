// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupData _$$_GroupDataFromJson(Map<String, dynamic> json) => _$_GroupData(
      id: json['id'] as String?,
      name: json['name'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      frequencyInterval: json['frequency_interval'] == null
          ? null
          : DateTime.parse(json['frequency_interval'] as String),
      contacts: (json['contacts'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_GroupDataToJson(_$_GroupData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['avatar'] = instance.avatar;
  writeNotNull(
      'frequency_interval', instance.frequencyInterval?.toIso8601String());
  val['contacts'] = instance.contacts;
  return val;
}
