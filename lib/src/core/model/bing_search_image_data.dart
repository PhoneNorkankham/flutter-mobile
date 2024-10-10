import 'package:freezed_annotation/freezed_annotation.dart';

part 'bing_search_image_data.freezed.dart';
part 'bing_search_image_data.g.dart';

@freezed
class BingSearchImageData with _$BingSearchImageData {
  const factory BingSearchImageData({
    @Default('') String name,
    @Default('') @JsonKey(name: 'thumbnailUrl') String thumbnailUrl,
    @Default('') @JsonKey(name: 'contentUrl') String contentUrl,
  }) = _BingSearchImageData;

  factory BingSearchImageData.fromJson(Map<String, dynamic> json) =>
      _$BingSearchImageDataFromJson(json);
}
