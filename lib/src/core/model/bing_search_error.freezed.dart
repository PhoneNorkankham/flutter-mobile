// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bing_search_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BingSearchError _$BingSearchErrorFromJson(Map<String, dynamic> json) {
  return _BingSearchError.fromJson(json);
}

/// @nodoc
mixin _$BingSearchError {
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BingSearchErrorCopyWith<BingSearchError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BingSearchErrorCopyWith<$Res> {
  factory $BingSearchErrorCopyWith(
          BingSearchError value, $Res Function(BingSearchError) then) =
      _$BingSearchErrorCopyWithImpl<$Res, BingSearchError>;
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class _$BingSearchErrorCopyWithImpl<$Res, $Val extends BingSearchError>
    implements $BingSearchErrorCopyWith<$Res> {
  _$BingSearchErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BingSearchErrorImplCopyWith<$Res>
    implements $BingSearchErrorCopyWith<$Res> {
  factory _$$BingSearchErrorImplCopyWith(_$BingSearchErrorImpl value,
          $Res Function(_$BingSearchErrorImpl) then) =
      __$$BingSearchErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class __$$BingSearchErrorImplCopyWithImpl<$Res>
    extends _$BingSearchErrorCopyWithImpl<$Res, _$BingSearchErrorImpl>
    implements _$$BingSearchErrorImplCopyWith<$Res> {
  __$$BingSearchErrorImplCopyWithImpl(
      _$BingSearchErrorImpl _value, $Res Function(_$BingSearchErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$BingSearchErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BingSearchErrorImpl implements _BingSearchError {
  const _$BingSearchErrorImpl({this.code = '', this.message = ''});

  factory _$BingSearchErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$BingSearchErrorImplFromJson(json);

  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'BingSearchError(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BingSearchErrorImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BingSearchErrorImplCopyWith<_$BingSearchErrorImpl> get copyWith =>
      __$$BingSearchErrorImplCopyWithImpl<_$BingSearchErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BingSearchErrorImplToJson(
      this,
    );
  }
}

abstract class _BingSearchError implements BingSearchError {
  const factory _BingSearchError({final String code, final String message}) =
      _$BingSearchErrorImpl;

  factory _BingSearchError.fromJson(Map<String, dynamic> json) =
      _$BingSearchErrorImpl.fromJson;

  @override
  String get code;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$BingSearchErrorImplCopyWith<_$BingSearchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
