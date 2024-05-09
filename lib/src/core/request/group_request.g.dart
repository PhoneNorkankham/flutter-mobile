// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupRequest _$$_GroupRequestFromJson(Map<String, dynamic> json) =>
    _$_GroupRequest(
      groupId: json['id'] as String? ?? '',
      ownerId: json['owner_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      frequencyInterval:
          const DateTimeJsonConverter().fromJson(json['frequency_interval']),
      frequency: (json['frequency'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const [],
      contacts: (json['contacts'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_GroupRequestToJson(_$_GroupRequest instance) {
  final val = <String, dynamic>{
    'owner_id': instance.ownerId,
    'name': instance.name,
    'description': instance.description,
    'avatar': instance.avatar,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('frequency_interval',
      const DateTimeJsonConverter().toJson(instance.frequencyInterval));
  val['frequency'] = instance.frequency;
  val['contacts'] = instance.contacts;
  return val;
}
