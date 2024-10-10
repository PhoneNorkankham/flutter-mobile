import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/core/model/bing_search_error.dart';
import 'package:keepup/src/core/model/bing_search_image_data.dart';

part 'bing_search_images_response.freezed.dart';
part 'bing_search_images_response.g.dart';

@freezed
class BingSearchImagesResponse with _$BingSearchImagesResponse {
  const factory BingSearchImagesResponse({
    @Default([]) List<BingSearchImageData> value,
    @Default(0) @JsonKey(name: 'nextOffset') int nextOffset,
    @Default(0) @JsonKey(name: 'currentOffset') int currentOffset,
    @Default(0) @JsonKey(name: 'totalEstimatedMatches') int totalEstimatedMatches,
    @Default(BingSearchError()) BingSearchError error,
  }) = _BingSearchImagesResponse;

  factory BingSearchImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$BingSearchImagesResponseFromJson(json);
}
