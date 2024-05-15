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
      frequencyInterval: $enumDecodeNullable(
              _$FrequencyIntervalTypeEnumMap, json['frequency_interval']) ??
          FrequencyIntervalType.none,
      contacts: (json['contacts'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_GroupRequestToJson(_$_GroupRequest instance) =>
    <String, dynamic>{
      'owner_id': instance.ownerId,
      'name': instance.name,
      'description': instance.description,
      'avatar': instance.avatar,
      'frequency_interval':
          _$FrequencyIntervalTypeEnumMap[instance.frequencyInterval]!,
      'contacts': instance.contacts,
    };

const _$FrequencyIntervalTypeEnumMap = {
  FrequencyIntervalType.everyDay: 'everyDay',
  FrequencyIntervalType.everyWeek: 'everyWeek',
  FrequencyIntervalType.everyTwoWeeks: 'everyTwoWeeks',
  FrequencyIntervalType.everyMonth: 'everyMonth',
  FrequencyIntervalType.everyThreeMonths: 'everyThreeMonths',
  FrequencyIntervalType.everySixMonths: 'everySixMonths',
  FrequencyIntervalType.everyYear: 'everyYear',
  FrequencyIntervalType.none: 'none',
};
