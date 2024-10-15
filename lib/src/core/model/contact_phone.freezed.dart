// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_phone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactPhone _$ContactPhoneFromJson(Map<String, dynamic> json) {
  return _ContactPhone.fromJson(json);
}

/// @nodoc
mixin _$ContactPhone {
  @JsonKey(includeFromJson: false, includeToJson: false)
  int get key => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactPhoneCopyWith<ContactPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactPhoneCopyWith<$Res> {
  factory $ContactPhoneCopyWith(
          ContactPhone value, $Res Function(ContactPhone) then) =
      _$ContactPhoneCopyWithImpl<$Res, ContactPhone>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) int key,
      String label,
      String value});
}

/// @nodoc
class _$ContactPhoneCopyWithImpl<$Res, $Val extends ContactPhone>
    implements $ContactPhoneCopyWith<$Res> {
  _$ContactPhoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactPhoneImplCopyWith<$Res>
    implements $ContactPhoneCopyWith<$Res> {
  factory _$$ContactPhoneImplCopyWith(
          _$ContactPhoneImpl value, $Res Function(_$ContactPhoneImpl) then) =
      __$$ContactPhoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) int key,
      String label,
      String value});
}

/// @nodoc
class __$$ContactPhoneImplCopyWithImpl<$Res>
    extends _$ContactPhoneCopyWithImpl<$Res, _$ContactPhoneImpl>
    implements _$$ContactPhoneImplCopyWith<$Res> {
  __$$ContactPhoneImplCopyWithImpl(
      _$ContactPhoneImpl _value, $Res Function(_$ContactPhoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_$ContactPhoneImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactPhoneImpl implements _ContactPhone {
  const _$ContactPhoneImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.key = 0,
      this.label = '',
      this.value = ''});

  factory _$ContactPhoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactPhoneImplFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final int key;
  @override
  @JsonKey()
  final String label;
  @override
  @JsonKey()
  final String value;

  @override
  String toString() {
    return 'ContactPhone(key: $key, label: $label, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactPhoneImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, label, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactPhoneImplCopyWith<_$ContactPhoneImpl> get copyWith =>
      __$$ContactPhoneImplCopyWithImpl<_$ContactPhoneImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactPhoneImplToJson(
      this,
    );
  }
}

abstract class _ContactPhone implements ContactPhone {
  const factory _ContactPhone(
      {@JsonKey(includeFromJson: false, includeToJson: false) final int key,
      final String label,
      final String value}) = _$ContactPhoneImpl;

  factory _ContactPhone.fromJson(Map<String, dynamic> json) =
      _$ContactPhoneImpl.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  int get key;
  @override
  String get label;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$ContactPhoneImplCopyWith<_$ContactPhoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
