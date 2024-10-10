import 'package:freezed_annotation/freezed_annotation.dart';

part 'bing_search_error.freezed.dart';
part 'bing_search_error.g.dart';

@freezed
class BingSearchError with _$BingSearchError {
  const factory BingSearchError({
    @Default('') String code,
    @Default('') String message,
  }) = _BingSearchError;

  factory BingSearchError.fromJson(Map<String, dynamic> json) => _$BingSearchErrorFromJson(json);
}
