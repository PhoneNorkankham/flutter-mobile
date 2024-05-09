// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_every_day_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChoiceEveryDayData _$ChoiceEveryDayDataFromJson(Map<String, dynamic> json) {
  return _ChoiceEveryDayData.fromJson(json);
}

/// @nodoc
mixin _$ChoiceEveryDayData {
  String get text => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceEveryDayDataCopyWith<ChoiceEveryDayData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceEveryDayDataCopyWith<$Res> {
  factory $ChoiceEveryDayDataCopyWith(
          ChoiceEveryDayData value, $Res Function(ChoiceEveryDayData) then) =
      _$ChoiceEveryDayDataCopyWithImpl<$Res, ChoiceEveryDayData>;
  @useResult
  $Res call({String text, String description, bool isActive});
}

/// @nodoc
class _$ChoiceEveryDayDataCopyWithImpl<$Res, $Val extends ChoiceEveryDayData>
    implements $ChoiceEveryDayDataCopyWith<$Res> {
  _$ChoiceEveryDayDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? description = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChoiceEveryDayDataCopyWith<$Res>
    implements $ChoiceEveryDayDataCopyWith<$Res> {
  factory _$$_ChoiceEveryDayDataCopyWith(_$_ChoiceEveryDayData value,
          $Res Function(_$_ChoiceEveryDayData) then) =
      __$$_ChoiceEveryDayDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String description, bool isActive});
}

/// @nodoc
class __$$_ChoiceEveryDayDataCopyWithImpl<$Res>
    extends _$ChoiceEveryDayDataCopyWithImpl<$Res, _$_ChoiceEveryDayData>
    implements _$$_ChoiceEveryDayDataCopyWith<$Res> {
  __$$_ChoiceEveryDayDataCopyWithImpl(
      _$_ChoiceEveryDayData _value, $Res Function(_$_ChoiceEveryDayData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? description = null,
    Object? isActive = null,
  }) {
    return _then(_$_ChoiceEveryDayData(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChoiceEveryDayData implements _ChoiceEveryDayData {
  const _$_ChoiceEveryDayData(
      {this.text = '', this.description = '', this.isActive = true});

  factory _$_ChoiceEveryDayData.fromJson(Map<String, dynamic> json) =>
      _$$_ChoiceEveryDayDataFromJson(json);

  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'ChoiceEveryDayData(text: $text, description: $description, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoiceEveryDayData &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, description, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoiceEveryDayDataCopyWith<_$_ChoiceEveryDayData> get copyWith =>
      __$$_ChoiceEveryDayDataCopyWithImpl<_$_ChoiceEveryDayData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoiceEveryDayDataToJson(
      this,
    );
  }
}

abstract class _ChoiceEveryDayData implements ChoiceEveryDayData {
  const factory _ChoiceEveryDayData(
      {final String text,
      final String description,
      final bool isActive}) = _$_ChoiceEveryDayData;

  factory _ChoiceEveryDayData.fromJson(Map<String, dynamic> json) =
      _$_ChoiceEveryDayData.fromJson;

  @override
  String get text;
  @override
  String get description;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_ChoiceEveryDayDataCopyWith<_$_ChoiceEveryDayData> get copyWith =>
      throw _privateConstructorUsedError;
}
