import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/core/model/bing_search_image_data.dart';
import 'package:keepup/src/core/repository/bing_repository.dart';
import 'package:keepup/src/core/response/bing_search_images_response.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';

part 'search_images_bloc.freezed.dart';
part 'search_images_event.dart';
part 'search_images_state.dart';

class SearchImagesBloc extends Bloc<SearchImagesEvent, SearchImagesState> {
  final TextEditingController queryController = TextEditingController();

  final BingRepository _bingRepository;

  SearchImagesBloc(
    this._bingRepository,
  ) : super(const SearchImagesState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedQuery>(_onChangedQuery);
    on<_OnLoadMore>(_onLoadMore);
    on<_OnSearchImages>(_onSearchImages);
  }

  FutureOr<void> _initial(_Initial event, Emitter<SearchImagesState> emit) {
    add(SearchImagesEvent.onChangedQuery(event.query));
  }

  FutureOr<void> _onChangedQuery(_OnChangedQuery event, Emitter<SearchImagesState> emit) {
    queryController.text = event.query;
    emit(state.copyWith(
      isLoading: false,
      isStopped: false,
      query: event.query,
      images: [],
      nextOffset: 0,
      currentOffset: 0,
      totalEstimatedMatches: 0,
    ));
    add(const SearchImagesEvent.onSearchImages());
  }

  FutureOr<void> _onLoadMore(_OnLoadMore event, Emitter<SearchImagesState> emit) {
    add(const SearchImagesEvent.onSearchImages());
  }

  FutureOr<void> _onSearchImages(_OnSearchImages event, Emitter<SearchImagesState> emit) async {
    final String query = state.query;
    if (query.isEmpty || state.isLoading || state.isStopped) return;
    emit(state.copyWith(isLoading: true));
    final resource = await _bingRepository.searchImages(
      query: query,
      offset: state.nextOffset,
    );
    if (query != state.query) return;
    final BingSearchImagesResponse? response = resource.data;
    if (resource.isSuccess && response != null) {
      emit(state.copyWith(
        isLoading: false,
        isStopped: response.totalEstimatedMatches == response.currentOffset,
        images: [...state.images, ...response.value],
        nextOffset: response.nextOffset,
        currentOffset: response.currentOffset,
        totalEstimatedMatches: response.totalEstimatedMatches,
      ));
    } else {
      emit(state.copyWith(isLoading: false));
    }
  }
}
