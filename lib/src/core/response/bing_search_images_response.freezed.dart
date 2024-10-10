// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bing_search_images_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BingSearchImagesResponse _$BingSearchImagesResponseFromJson(
    Map<String, dynamic> json) {
  return _BingSearchImagesResponse.fromJson(json);
}

/// @nodoc
mixin _$BingSearchImagesResponse {
  List<BingSearchImageData> get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'nextOffset')
  int get nextOffset => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentOffset')
  int get currentOffset => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalEstimatedMatches')
  int get totalEstimatedMatches => throw _privateConstructorUsedError;
  BingSearchError get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BingSearchImagesResponseCopyWith<BingSearchImagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BingSearchImagesResponseCopyWith<$Res> {
  factory $BingSearchImagesResponseCopyWith(BingSearchImagesResponse value,
          $Res Function(BingSearchImagesResponse) then) =
      _$BingSearchImagesResponseCopyWithImpl<$Res, BingSearchImagesResponse>;
  @useResult
  $Res call(
      {List<BingSearchImageData> value,
      @JsonKey(name: 'nextOffset') int nextOffset,
      @JsonKey(name: 'currentOffset') int currentOffset,
      @JsonKey(name: 'totalEstimatedMatches') int totalEstimatedMatches,
      BingSearchError error});

  $BingSearchErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$BingSearchImagesResponseCopyWithImpl<$Res,
        $Val extends BingSearchImagesResponse>
    implements $BingSearchImagesResponseCopyWith<$Res> {
  _$BingSearchImagesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? nextOffset = null,
    Object? currentOffset = null,
    Object? totalEstimatedMatches = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
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
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BingSearchError,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BingSearchErrorCopyWith<$Res> get error {
    return $BingSearchErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BingSearchImagesResponseImplCopyWith<$Res>
    implements $BingSearchImagesResponseCopyWith<$Res> {
  factory _$$BingSearchImagesResponseImplCopyWith(
          _$BingSearchImagesResponseImpl value,
          $Res Function(_$BingSearchImagesResponseImpl) then) =
      __$$BingSearchImagesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BingSearchImageData> value,
      @JsonKey(name: 'nextOffset') int nextOffset,
      @JsonKey(name: 'currentOffset') int currentOffset,
      @JsonKey(name: 'totalEstimatedMatches') int totalEstimatedMatches,
      BingSearchError error});

  @override
  $BingSearchErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$BingSearchImagesResponseImplCopyWithImpl<$Res>
    extends _$BingSearchImagesResponseCopyWithImpl<$Res,
        _$BingSearchImagesResponseImpl>
    implements _$$BingSearchImagesResponseImplCopyWith<$Res> {
  __$$BingSearchImagesResponseImplCopyWithImpl(
      _$BingSearchImagesResponseImpl _value,
      $Res Function(_$BingSearchImagesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? nextOffset = null,
    Object? currentOffset = null,
    Object? totalEstimatedMatches = null,
    Object? error = null,
  }) {
    return _then(_$BingSearchImagesResponseImpl(
      value: null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
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
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BingSearchError,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BingSearchImagesResponseImpl implements _BingSearchImagesResponse {
  const _$BingSearchImagesResponseImpl(
      {final List<BingSearchImageData> value = const [],
      @JsonKey(name: 'nextOffset') this.nextOffset = 0,
      @JsonKey(name: 'currentOffset') this.currentOffset = 0,
      @JsonKey(name: 'totalEstimatedMatches') this.totalEstimatedMatches = 0,
      this.error = const BingSearchError()})
      : _value = value;

  factory _$BingSearchImagesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BingSearchImagesResponseImplFromJson(json);

  final List<BingSearchImageData> _value;
  @override
  @JsonKey()
  List<BingSearchImageData> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  @JsonKey(name: 'nextOffset')
  final int nextOffset;
  @override
  @JsonKey(name: 'currentOffset')
  final int currentOffset;
  @override
  @JsonKey(name: 'totalEstimatedMatches')
  final int totalEstimatedMatches;
  @override
  @JsonKey()
  final BingSearchError error;

  @override
  String toString() {
    return 'BingSearchImagesResponse(value: $value, nextOffset: $nextOffset, currentOffset: $currentOffset, totalEstimatedMatches: $totalEstimatedMatches, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BingSearchImagesResponseImpl &&
            const DeepCollectionEquality().equals(other._value, _value) &&
            (identical(other.nextOffset, nextOffset) ||
                other.nextOffset == nextOffset) &&
            (identical(other.currentOffset, currentOffset) ||
                other.currentOffset == currentOffset) &&
            (identical(other.totalEstimatedMatches, totalEstimatedMatches) ||
                other.totalEstimatedMatches == totalEstimatedMatches) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_value),
      nextOffset,
      currentOffset,
      totalEstimatedMatches,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BingSearchImagesResponseImplCopyWith<_$BingSearchImagesResponseImpl>
      get copyWith => __$$BingSearchImagesResponseImplCopyWithImpl<
          _$BingSearchImagesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BingSearchImagesResponseImplToJson(
      this,
    );
  }
}

abstract class _BingSearchImagesResponse implements BingSearchImagesResponse {
  const factory _BingSearchImagesResponse(
      {final List<BingSearchImageData> value,
      @JsonKey(name: 'nextOffset') final int nextOffset,
      @JsonKey(name: 'currentOffset') final int currentOffset,
      @JsonKey(name: 'totalEstimatedMatches') final int totalEstimatedMatches,
      final BingSearchError error}) = _$BingSearchImagesResponseImpl;

  factory _BingSearchImagesResponse.fromJson(Map<String, dynamic> json) =
      _$BingSearchImagesResponseImpl.fromJson;

  @override
  List<BingSearchImageData> get value;
  @override
  @JsonKey(name: 'nextOffset')
  int get nextOffset;
  @override
  @JsonKey(name: 'currentOffset')
  int get currentOffset;
  @override
  @JsonKey(name: 'totalEstimatedMatches')
  int get totalEstimatedMatches;
  @override
  BingSearchError get error;
  @override
  @JsonKey(ignore: true)
  _$$BingSearchImagesResponseImplCopyWith<_$BingSearchImagesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
