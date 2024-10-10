// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_images_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchImagesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String query) onChangedQuery,
    required TResult Function() onLoadMore,
    required TResult Function() onSearchImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String query)? onChangedQuery,
    TResult? Function()? onLoadMore,
    TResult? Function()? onSearchImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String query)? onChangedQuery,
    TResult Function()? onLoadMore,
    TResult Function()? onSearchImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedQuery value) onChangedQuery,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_OnSearchImages value) onSearchImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedQuery value)? onChangedQuery,
    TResult? Function(_OnLoadMore value)? onLoadMore,
    TResult? Function(_OnSearchImages value)? onSearchImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedQuery value)? onChangedQuery,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_OnSearchImages value)? onSearchImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchImagesEventCopyWith<$Res> {
  factory $SearchImagesEventCopyWith(
          SearchImagesEvent value, $Res Function(SearchImagesEvent) then) =
      _$SearchImagesEventCopyWithImpl<$Res, SearchImagesEvent>;
}

/// @nodoc
class _$SearchImagesEventCopyWithImpl<$Res, $Val extends SearchImagesEvent>
    implements $SearchImagesEventCopyWith<$Res> {
  _$SearchImagesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SearchImagesEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$InitialImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchImagesEvent.initial(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String query) onChangedQuery,
    required TResult Function() onLoadMore,
    required TResult Function() onSearchImages,
  }) {
    return initial(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String query)? onChangedQuery,
    TResult? Function()? onLoadMore,
    TResult? Function()? onSearchImages,
  }) {
    return initial?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String query)? onChangedQuery,
    TResult Function()? onLoadMore,
    TResult Function()? onSearchImages,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedQuery value) onChangedQuery,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_OnSearchImages value) onSearchImages,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedQuery value)? onChangedQuery,
    TResult? Function(_OnLoadMore value)? onLoadMore,
    TResult? Function(_OnSearchImages value)? onSearchImages,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedQuery value)? onChangedQuery,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_OnSearchImages value)? onSearchImages,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchImagesEvent {
  const factory _Initial(final String query) = _$InitialImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPageCommandImplCopyWith<$Res> {
  factory _$$ClearPageCommandImplCopyWith(_$ClearPageCommandImpl value,
          $Res Function(_$ClearPageCommandImpl) then) =
      __$$ClearPageCommandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPageCommandImplCopyWithImpl<$Res>
    extends _$SearchImagesEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'SearchImagesEvent.clearPageCommand()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearPageCommandImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String query) onChangedQuery,
    required TResult Function() onLoadMore,
    required TResult Function() onSearchImages,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String query)? onChangedQuery,
    TResult? Function()? onLoadMore,
    TResult? Function()? onSearchImages,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String query)? onChangedQuery,
    TResult Function()? onLoadMore,
    TResult Function()? onSearchImages,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedQuery value) onChangedQuery,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_OnSearchImages value) onSearchImages,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedQuery value)? onChangedQuery,
    TResult? Function(_OnLoadMore value)? onLoadMore,
    TResult? Function(_OnSearchImages value)? onSearchImages,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedQuery value)? onChangedQuery,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_OnSearchImages value)? onSearchImages,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements SearchImagesEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
abstract class _$$OnChangedQueryImplCopyWith<$Res> {
  factory _$$OnChangedQueryImplCopyWith(_$OnChangedQueryImpl value,
          $Res Function(_$OnChangedQueryImpl) then) =
      __$$OnChangedQueryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$OnChangedQueryImplCopyWithImpl<$Res>
    extends _$SearchImagesEventCopyWithImpl<$Res, _$OnChangedQueryImpl>
    implements _$$OnChangedQueryImplCopyWith<$Res> {
  __$$OnChangedQueryImplCopyWithImpl(
      _$OnChangedQueryImpl _value, $Res Function(_$OnChangedQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$OnChangedQueryImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnChangedQueryImpl implements _OnChangedQuery {
  const _$OnChangedQueryImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchImagesEvent.onChangedQuery(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangedQueryImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangedQueryImplCopyWith<_$OnChangedQueryImpl> get copyWith =>
      __$$OnChangedQueryImplCopyWithImpl<_$OnChangedQueryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String query) onChangedQuery,
    required TResult Function() onLoadMore,
    required TResult Function() onSearchImages,
  }) {
    return onChangedQuery(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String query)? onChangedQuery,
    TResult? Function()? onLoadMore,
    TResult? Function()? onSearchImages,
  }) {
    return onChangedQuery?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String query)? onChangedQuery,
    TResult Function()? onLoadMore,
    TResult Function()? onSearchImages,
    required TResult orElse(),
  }) {
    if (onChangedQuery != null) {
      return onChangedQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedQuery value) onChangedQuery,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_OnSearchImages value) onSearchImages,
  }) {
    return onChangedQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedQuery value)? onChangedQuery,
    TResult? Function(_OnLoadMore value)? onLoadMore,
    TResult? Function(_OnSearchImages value)? onSearchImages,
  }) {
    return onChangedQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedQuery value)? onChangedQuery,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_OnSearchImages value)? onSearchImages,
    required TResult orElse(),
  }) {
    if (onChangedQuery != null) {
      return onChangedQuery(this);
    }
    return orElse();
  }
}

abstract class _OnChangedQuery implements SearchImagesEvent {
  const factory _OnChangedQuery(final String query) = _$OnChangedQueryImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$OnChangedQueryImplCopyWith<_$OnChangedQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLoadMoreImplCopyWith<$Res> {
  factory _$$OnLoadMoreImplCopyWith(
          _$OnLoadMoreImpl value, $Res Function(_$OnLoadMoreImpl) then) =
      __$$OnLoadMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLoadMoreImplCopyWithImpl<$Res>
    extends _$SearchImagesEventCopyWithImpl<$Res, _$OnLoadMoreImpl>
    implements _$$OnLoadMoreImplCopyWith<$Res> {
  __$$OnLoadMoreImplCopyWithImpl(
      _$OnLoadMoreImpl _value, $Res Function(_$OnLoadMoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnLoadMoreImpl implements _OnLoadMore {
  const _$OnLoadMoreImpl();

  @override
  String toString() {
    return 'SearchImagesEvent.onLoadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLoadMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String query) onChangedQuery,
    required TResult Function() onLoadMore,
    required TResult Function() onSearchImages,
  }) {
    return onLoadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String query)? onChangedQuery,
    TResult? Function()? onLoadMore,
    TResult? Function()? onSearchImages,
  }) {
    return onLoadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String query)? onChangedQuery,
    TResult Function()? onLoadMore,
    TResult Function()? onSearchImages,
    required TResult orElse(),
  }) {
    if (onLoadMore != null) {
      return onLoadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedQuery value) onChangedQuery,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_OnSearchImages value) onSearchImages,
  }) {
    return onLoadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedQuery value)? onChangedQuery,
    TResult? Function(_OnLoadMore value)? onLoadMore,
    TResult? Function(_OnSearchImages value)? onSearchImages,
  }) {
    return onLoadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedQuery value)? onChangedQuery,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_OnSearchImages value)? onSearchImages,
    required TResult orElse(),
  }) {
    if (onLoadMore != null) {
      return onLoadMore(this);
    }
    return orElse();
  }
}

abstract class _OnLoadMore implements SearchImagesEvent {
  const factory _OnLoadMore() = _$OnLoadMoreImpl;
}

/// @nodoc
abstract class _$$OnSearchImagesImplCopyWith<$Res> {
  factory _$$OnSearchImagesImplCopyWith(_$OnSearchImagesImpl value,
          $Res Function(_$OnSearchImagesImpl) then) =
      __$$OnSearchImagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSearchImagesImplCopyWithImpl<$Res>
    extends _$SearchImagesEventCopyWithImpl<$Res, _$OnSearchImagesImpl>
    implements _$$OnSearchImagesImplCopyWith<$Res> {
  __$$OnSearchImagesImplCopyWithImpl(
      _$OnSearchImagesImpl _value, $Res Function(_$OnSearchImagesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnSearchImagesImpl implements _OnSearchImages {
  const _$OnSearchImagesImpl();

  @override
  String toString() {
    return 'SearchImagesEvent.onSearchImages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnSearchImagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String query) onChangedQuery,
    required TResult Function() onLoadMore,
    required TResult Function() onSearchImages,
  }) {
    return onSearchImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String query)? onChangedQuery,
    TResult? Function()? onLoadMore,
    TResult? Function()? onSearchImages,
  }) {
    return onSearchImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String query)? onChangedQuery,
    TResult Function()? onLoadMore,
    TResult Function()? onSearchImages,
    required TResult orElse(),
  }) {
    if (onSearchImages != null) {
      return onSearchImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedQuery value) onChangedQuery,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_OnSearchImages value) onSearchImages,
  }) {
    return onSearchImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedQuery value)? onChangedQuery,
    TResult? Function(_OnLoadMore value)? onLoadMore,
    TResult? Function(_OnSearchImages value)? onSearchImages,
  }) {
    return onSearchImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedQuery value)? onChangedQuery,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_OnSearchImages value)? onSearchImages,
    required TResult orElse(),
  }) {
    if (onSearchImages != null) {
      return onSearchImages(this);
    }
    return orElse();
  }
}

abstract class _OnSearchImages implements SearchImagesEvent {
  const factory _OnSearchImages() = _$OnSearchImagesImpl;
}

/// @nodoc
mixin _$SearchImagesState {
  PageCommand? get pageCommand => throw _privateConstructorUsedError;
  PageState get pageState => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isStopped => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  List<BingSearchImageData> get images => throw _privateConstructorUsedError;
  int get nextOffset => throw _privateConstructorUsedError;
  int get currentOffset => throw _privateConstructorUsedError;
  int get totalEstimatedMatches => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchImagesStateCopyWith<SearchImagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchImagesStateCopyWith<$Res> {
  factory $SearchImagesStateCopyWith(
          SearchImagesState value, $Res Function(SearchImagesState) then) =
      _$SearchImagesStateCopyWithImpl<$Res, SearchImagesState>;
  @useResult
  $Res call(
      {PageCommand? pageCommand,
      PageState pageState,
      bool isLoading,
      bool isStopped,
      String query,
      List<BingSearchImageData> images,
      int nextOffset,
      int currentOffset,
      int totalEstimatedMatches});

  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class _$SearchImagesStateCopyWithImpl<$Res, $Val extends SearchImagesState>
    implements $SearchImagesStateCopyWith<$Res> {
  _$SearchImagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageCommand = freezed,
    Object? pageState = null,
    Object? isLoading = null,
    Object? isStopped = null,
    Object? query = null,
    Object? images = null,
    Object? nextOffset = null,
    Object? currentOffset = null,
    Object? totalEstimatedMatches = null,
  }) {
    return _then(_value.copyWith(
      pageCommand: freezed == pageCommand
          ? _value.pageCommand
          : pageCommand // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isStopped: null == isStopped
          ? _value.isStopped
          : isStopped // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<BingSearchImageData>,
      nextOffset: null == nextOffset
          ? _value.nextOffset
          : nextOffset // ignore: cast_nullable_to_non_nullable
              as int,
      currentOffset: null == currentOffset
          ? _value.currentOffset
          : currentOffset // ignore: cast_nullable_to_non_nullable
              as int,
      totalEstimatedMatches: null == totalEstimatedMatches
          ? _value.totalEstimatedMatches
          : totalEstimatedMatches // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageCommandCopyWith<$Res>? get pageCommand {
    if (_value.pageCommand == null) {
      return null;
    }

    return $PageCommandCopyWith<$Res>(_value.pageCommand!, (value) {
      return _then(_value.copyWith(pageCommand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchImagesStateImplCopyWith<$Res>
    implements $SearchImagesStateCopyWith<$Res> {
  factory _$$SearchImagesStateImplCopyWith(_$SearchImagesStateImpl value,
          $Res Function(_$SearchImagesStateImpl) then) =
      __$$SearchImagesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageCommand? pageCommand,
      PageState pageState,
      bool isLoading,
      bool isStopped,
      String query,
      List<BingSearchImageData> images,
      int nextOffset,
      int currentOffset,
      int totalEstimatedMatches});

  @override
  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class __$$SearchImagesStateImplCopyWithImpl<$Res>
    extends _$SearchImagesStateCopyWithImpl<$Res, _$SearchImagesStateImpl>
    implements _$$SearchImagesStateImplCopyWith<$Res> {
  __$$SearchImagesStateImplCopyWithImpl(_$SearchImagesStateImpl _value,
      $Res Function(_$SearchImagesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageCommand = freezed,
    Object? pageState = null,
    Object? isLoading = null,
    Object? isStopped = null,
    Object? query = null,
    Object? images = null,
    Object? nextOffset = null,
    Object? currentOffset = null,
    Object? totalEstimatedMatches = null,
  }) {
    return _then(_$SearchImagesStateImpl(
      pageCommand: freezed == pageCommand
          ? _value.pageCommand
          : pageCommand // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isStopped: null == isStopped
          ? _value.isStopped
          : isStopped // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<BingSearchImageData>,
      nextOffset: null == nextOffset
          ? _value.nextOffset
          : nextOffset // ignore: cast_nullable_to_non_nullable
              as int,
      currentOffset: null == currentOffset
          ? _value.currentOffset
          : currentOffset // ignore: cast_nullable_to_non_nullable
              as int,
      totalEstimatedMatches: null == totalEstimatedMatches
          ? _value.totalEstimatedMatches
          : totalEstimatedMatches // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SearchImagesStateImpl extends _SearchImagesState {
  const _$SearchImagesStateImpl(
      {this.pageCommand,
      this.pageState = PageState.loading,
      this.isLoading = false,
      this.isStopped = false,
      this.query = '',
      final List<BingSearchImageData> images = const [],
      this.nextOffset = 0,
      this.currentOffset = 0,
      this.totalEstimatedMatches = 0})
      : _images = images,
        super._();

  @override
  final PageCommand? pageCommand;
  @override
  @JsonKey()
  final PageState pageState;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isStopped;
  @override
  @JsonKey()
  final String query;
  final List<BingSearchImageData> _images;
  @override
  @JsonKey()
  List<BingSearchImageData> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final int nextOffset;
  @override
  @JsonKey()
  final int currentOffset;
  @override
  @JsonKey()
  final int totalEstimatedMatches;

  @override
  String toString() {
    return 'SearchImagesState(pageCommand: $pageCommand, pageState: $pageState, isLoading: $isLoading, isStopped: $isStopped, query: $query, images: $images, nextOffset: $nextOffset, currentOffset: $currentOffset, totalEstimatedMatches: $totalEstimatedMatches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImagesStateImpl &&
            (identical(other.pageCommand, pageCommand) ||
                other.pageCommand == pageCommand) &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isStopped, isStopped) ||
                other.isStopped == isStopped) &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.nextOffset, nextOffset) ||
                other.nextOffset == nextOffset) &&
            (identical(other.currentOffset, currentOffset) ||
                other.currentOffset == currentOffset) &&
            (identical(other.totalEstimatedMatches, totalEstimatedMatches) ||
                other.totalEstimatedMatches == totalEstimatedMatches));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pageCommand,
      pageState,
      isLoading,
      isStopped,
      query,
      const DeepCollectionEquality().hash(_images),
      nextOffset,
      currentOffset,
      totalEstimatedMatches);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImagesStateImplCopyWith<_$SearchImagesStateImpl> get copyWith =>
      __$$SearchImagesStateImplCopyWithImpl<_$SearchImagesStateImpl>(
          this, _$identity);
}

abstract class _SearchImagesState extends SearchImagesState {
  const factory _SearchImagesState(
      {final PageCommand? pageCommand,
      final PageState pageState,
      final bool isLoading,
      final bool isStopped,
      final String query,
      final List<BingSearchImageData> images,
      final int nextOffset,
      final int currentOffset,
      final int totalEstimatedMatches}) = _$SearchImagesStateImpl;
  const _SearchImagesState._() : super._();

  @override
  PageCommand? get pageCommand;
  @override
  PageState get pageState;
  @override
  bool get isLoading;
  @override
  bool get isStopped;
  @override
  String get query;
  @override
  List<BingSearchImageData> get images;
  @override
  int get nextOffset;
  @override
  int get currentOffset;
  @override
  int get totalEstimatedMatches;
  @override
  @JsonKey(ignore: true)
  _$$SearchImagesStateImplCopyWith<_$SearchImagesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
