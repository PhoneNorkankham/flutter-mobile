part of 'search_images_bloc.dart';

@freezed
class SearchImagesState with _$SearchImagesState {
  const SearchImagesState._();

  const factory SearchImagesState({
    PageCommand? pageCommand,
    @Default(PageState.loading) PageState pageState,
    @Default(false) bool isLoading,
    @Default(false) bool isStopped,
    @Default('') String query,
    @Default([]) List<BingSearchImageData> images,
    @Default(0) int nextOffset,
    @Default(0) int currentOffset,
    @Default(0) int totalEstimatedMatches,
  }) = _SearchImagesState;
}
