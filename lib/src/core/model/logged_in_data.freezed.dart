// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logged_in_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoggedInData _$LoggedInDataFromJson(Map<String, dynamic> json) {
  return _LoggedInData.fromJson(json);
}

/// @nodoc
mixin _$LoggedInData {
  @HiveField(0, defaultValue: false)
  bool get isLoggedIn => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: false)
  bool get isExpired => throw _privateConstructorUsedError;
  @HiveField(2, defaultValue: false)
  bool get isAnonymous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoggedInDataCopyWith<LoggedInData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggedInDataCopyWith<$Res> {
  factory $LoggedInDataCopyWith(
          LoggedInData value, $Res Function(LoggedInData) then) =
      _$LoggedInDataCopyWithImpl<$Res, LoggedInData>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: false) bool isLoggedIn,
      @HiveField(1, defaultValue: false) bool isExpired,
      @HiveField(2, defaultValue: false) bool isAnonymous});
}

/// @nodoc
class _$LoggedInDataCopyWithImpl<$Res, $Val extends LoggedInData>
    implements $LoggedInDataCopyWith<$Res> {
  _$LoggedInDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
    Object? isExpired = null,
    Object? isAnonymous = null,
  }) {
    return _then(_value.copyWith(
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isExpired: null == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoggedInDataImplCopyWith<$Res>
    implements $LoggedInDataCopyWith<$Res> {
  factory _$$LoggedInDataImplCopyWith(
          _$LoggedInDataImpl value, $Res Function(_$LoggedInDataImpl) then) =
      __$$LoggedInDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: false) bool isLoggedIn,
      @HiveField(1, defaultValue: false) bool isExpired,
      @HiveField(2, defaultValue: false) bool isAnonymous});
}

/// @nodoc
class __$$LoggedInDataImplCopyWithImpl<$Res>
    extends _$LoggedInDataCopyWithImpl<$Res, _$LoggedInDataImpl>
    implements _$$LoggedInDataImplCopyWith<$Res> {
  __$$LoggedInDataImplCopyWithImpl(
      _$LoggedInDataImpl _value, $Res Function(_$LoggedInDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
    Object? isExpired = null,
    Object? isAnonymous = null,
  }) {
    return _then(_$LoggedInDataImpl(
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isExpired: null == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoggedInDataImpl implements _LoggedInData {
  const _$LoggedInDataImpl(
      {@HiveField(0, defaultValue: false) this.isLoggedIn = false,
      @HiveField(1, defaultValue: false) this.isExpired = false,
      @HiveField(2, defaultValue: false) this.isAnonymous = false});

  factory _$LoggedInDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoggedInDataImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0, defaultValue: false)
  final bool isLoggedIn;
  @override
  @JsonKey()
  @HiveField(1, defaultValue: false)
  final bool isExpired;
  @override
  @JsonKey()
  @HiveField(2, defaultValue: false)
  final bool isAnonymous;

  @override
  String toString() {
    return 'LoggedInData(isLoggedIn: $isLoggedIn, isExpired: $isExpired, isAnonymous: $isAnonymous)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInDataImpl &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.isExpired, isExpired) ||
                other.isExpired == isExpired) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoggedIn, isExpired, isAnonymous);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInDataImplCopyWith<_$LoggedInDataImpl> get copyWith =>
      __$$LoggedInDataImplCopyWithImpl<_$LoggedInDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoggedInDataImplToJson(
      this,
    );
  }
}

abstract class _LoggedInData implements LoggedInData {
  const factory _LoggedInData(
          {@HiveField(0, defaultValue: false) final bool isLoggedIn,
          @HiveField(1, defaultValue: false) final bool isExpired,
          @HiveField(2, defaultValue: false) final bool isAnonymous}) =
      _$LoggedInDataImpl;

  factory _LoggedInData.fromJson(Map<String, dynamic> json) =
      _$LoggedInDataImpl.fromJson;

  @override
  @HiveField(0, defaultValue: false)
  bool get isLoggedIn;
  @override
  @HiveField(1, defaultValue: false)
  bool get isExpired;
  @override
  @HiveField(2, defaultValue: false)
  bool get isAnonymous;
  @override
  @JsonKey(ignore: true)
  _$$LoggedInDataImplCopyWith<_$LoggedInDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
