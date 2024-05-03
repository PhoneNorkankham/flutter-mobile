// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_every_day_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChoiceEveryDayData _$$_ChoiceEveryDayDataFromJson(
        Map<String, dynamic> json) =>
    _$_ChoiceEveryDayData(
      text: json['text'] as String? ?? '',
      description: json['description'] as String? ?? '',
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$$_ChoiceEveryDayDataToJson(
        _$_ChoiceEveryDayData instance) =>
    <String, dynamic>{
      'text': instance.text,
      'description': instance.description,
      'is_active': instance.isActive,
    };
