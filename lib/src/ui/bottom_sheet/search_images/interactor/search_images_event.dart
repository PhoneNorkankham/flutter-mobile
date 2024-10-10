part of 'search_images_bloc.dart';

@freezed
class SearchImagesEvent with _$SearchImagesEvent {
  const factory SearchImagesEvent.initial(String query) = _Initial;

  const factory SearchImagesEvent.clearPageCommand() = _ClearPageCommand;

  const factory SearchImagesEvent.onChangedQuery(String query) = _OnChangedQuery;

  const factory SearchImagesEvent.onLoadMore() = _OnLoadMore;

  const factory SearchImagesEvent.onSearchImages() = _OnSearchImages;
}
