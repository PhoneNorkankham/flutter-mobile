// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bing_search_image_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BingSearchImageData _$BingSearchImageDataFromJson(Map<String, dynamic> json) {
  return _BingSearchImageData.fromJson(json);
}

/// @nodoc
mixin _$BingSearchImageData {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnailUrl')
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentUrl')
  String get contentUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BingSearchImageDataCopyWith<BingSearchImageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BingSearchImageDataCopyWith<$Res> {
  factory $BingSearchImageDataCopyWith(
          BingSearchImageData value, $Res Function(BingSearchImageData) then) =
      _$BingSearchImageDataCopyWithImpl<$Res, BingSearchImageData>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'thumbnailUrl') String thumbnailUrl,
      @JsonKey(name: 'contentUrl') String contentUrl});
}

/// @nodoc
class _$BingSearchImageDataCopyWithImpl<$Res, $Val extends BingSearchImageData>
    implements $BingSearchImageDataCopyWith<$Res> {
  _$BingSearchImageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? thumbnailUrl = null,
    Object? contentUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      contentUrl: null == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BingSearchImageDataImplCopyWith<$Res>
    implements $BingSearchImageDataCopyWith<$Res> {
  factory _$$BingSearchImageDataImplCopyWith(_$BingSearchImageDataImpl value,
          $Res Function(_$BingSearchImageDataImpl) then) =
      __$$BingSearchImageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'thumbnailUrl') String thumbnailUrl,
      @JsonKey(name: 'contentUrl') String contentUrl});
}

/// @nodoc
class __$$BingSearchImageDataImplCopyWithImpl<$Res>
    extends _$BingSearchImageDataCopyWithImpl<$Res, _$BingSearchImageDataImpl>
    implements _$$BingSearchImageDataImplCopyWith<$Res> {
  __$$BingSearchImageDataImplCopyWithImpl(_$BingSearchImageDataImpl _value,
      $Res Function(_$BingSearchImageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? thumbnailUrl = null,
    Object? contentUrl = null,
  }) {
    return _then(_$BingSearchImageDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      contentUrl: null == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BingSearchImageDataImpl implements _BingSearchImageData {
  const _$BingSearchImageDataImpl(
      {this.name = '',
      @JsonKey(name: 'thumbnailUrl') this.thumbnailUrl = '',
      @JsonKey(name: 'contentUrl') this.contentUrl = ''});

  factory _$BingSearchImageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BingSearchImageDataImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: 'thumbnailUrl')
  final String thumbnailUrl;
  @override
  @JsonKey(name: 'contentUrl')
  final String contentUrl;

  @override
  String toString() {
    return 'BingSearchImageData(name: $name, thumbnailUrl: $thumbnailUrl, contentUrl: $contentUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BingSearchImageDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, thumbnailUrl, contentUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BingSearchImageDataImplCopyWith<_$BingSearchImageDataImpl> get copyWith =>
      __$$BingSearchImageDataImplCopyWithImpl<_$BingSearchImageDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BingSearchImageDataImplToJson(
      this,
    );
  }
}

abstract class _BingSearchImageData implements BingSearchImageData {
  const factory _BingSearchImageData(
          {final String name,
          @JsonKey(name: 'thumbnailUrl') final String thumbnailUrl,
          @JsonKey(name: 'contentUrl') final String contentUrl}) =
      _$BingSearchImageDataImpl;

  factory _BingSearchImageData.fromJson(Map<String, dynamic> json) =
      _$BingSearchImageDataImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'thumbnailUrl')
  String get thumbnailUrl;
  @override
  @JsonKey(name: 'contentUrl')
  String get contentUrl;
  @override
  @JsonKey(ignore: true)
  _$$BingSearchImageDataImplCopyWith<_$BingSearchImageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
