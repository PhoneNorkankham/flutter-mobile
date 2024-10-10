// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bing_search_images_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BingSearchImagesResponseImpl _$$BingSearchImagesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BingSearchImagesResponseImpl(
      value: (json['value'] as List<dynamic>?)
              ?.map((e) =>
                  BingSearchImageData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      nextOffset: (json['nextOffset'] as num?)?.toInt() ?? 0,
      currentOffset: (json['currentOffset'] as num?)?.toInt() ?? 0,
      totalEstimatedMatches:
          (json['totalEstimatedMatches'] as num?)?.toInt() ?? 0,
      error: json['error'] == null
          ? const BingSearchError()
          : BingSearchError.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BingSearchImagesResponseImplToJson(
        _$BingSearchImagesResponseImpl instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e.toJson()).toList(),
      'nextOffset': instance.nextOffset,
      'currentOffset': instance.currentOffset,
      'totalEstimatedMatches': instance.totalEstimatedMatches,
      'error': instance.error.toJson(),
    };
