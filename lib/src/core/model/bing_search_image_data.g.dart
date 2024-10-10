// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bing_search_image_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BingSearchImageDataImpl _$$BingSearchImageDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BingSearchImageDataImpl(
      name: json['name'] as String? ?? '',
      thumbnailUrl: json['thumbnailUrl'] as String? ?? '',
      contentUrl: json['contentUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$BingSearchImageDataImplToJson(
        _$BingSearchImageDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'thumbnailUrl': instance.thumbnailUrl,
      'contentUrl': instance.contentUrl,
    };
