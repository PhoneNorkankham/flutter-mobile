// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupRequestImpl _$$GroupRequestImplFromJson(Map<String, dynamic> json) =>
    _$GroupRequestImpl(
      groupId: json['id'] as String? ?? '',
      ownerId: json['owner_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      categoryId: json['category_id'] as String? ?? '',
      frequencyInterval: $enumDecodeNullable(
              _$FrequencyIntervalTypeEnumMap, json['frequency_interval'],
              unknownValue: FrequencyIntervalType.everyWeek) ??
          FrequencyIntervalType.everyWeek,
      contacts: (json['contacts'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      dateCreated: const DateTimeJsonConverter().fromJson(json['date_created']),
    );

Map<String, dynamic> _$$GroupRequestImplToJson(_$GroupRequestImpl instance) {
  final val = <String, dynamic>{
    'owner_id': instance.ownerId,
    'name': instance.name,
    'description': instance.description,
    'avatar': instance.avatar,
    'category_id': instance.categoryId,
    'frequency_interval':
        _$FrequencyIntervalTypeEnumMap[instance.frequencyInterval]!,
    'contacts': instance.contacts,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('date_created',
      const DateTimeJsonConverter().toJson(instance.dateCreated));
  return val;
}

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
