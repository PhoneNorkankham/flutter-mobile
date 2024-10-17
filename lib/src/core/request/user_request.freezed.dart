// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRequest _$UserRequestFromJson(Map<String, dynamic> json) {
  return _UserRequest.fromJson(json);
}

/// @nodoc
mixin _$UserRequest {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created')
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_logged_in')
  DateTime? get dateLoggedIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRequestCopyWith<UserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestCopyWith<$Res> {
  factory $UserRequestCopyWith(
          UserRequest value, $Res Function(UserRequest) then) =
      _$UserRequestCopyWithImpl<$Res, UserRequest>;
  @useResult
  $Res call(
      {String id,
      String? name,
      @JsonKey(name: 'date_created') DateTime? dateCreated,
      @JsonKey(name: 'date_logged_in') DateTime? dateLoggedIn});
}

/// @nodoc
class _$UserRequestCopyWithImpl<$Res, $Val extends UserRequest>
    implements $UserRequestCopyWith<$Res> {
  _$UserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? dateCreated = freezed,
    Object? dateLoggedIn = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateLoggedIn: freezed == dateLoggedIn
          ? _value.dateLoggedIn
          : dateLoggedIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRequestImplCopyWith<$Res>
    implements $UserRequestCopyWith<$Res> {
  factory _$$UserRequestImplCopyWith(
          _$UserRequestImpl value, $Res Function(_$UserRequestImpl) then) =
      __$$UserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      @JsonKey(name: 'date_created') DateTime? dateCreated,
      @JsonKey(name: 'date_logged_in') DateTime? dateLoggedIn});
}

/// @nodoc
class __$$UserRequestImplCopyWithImpl<$Res>
    extends _$UserRequestCopyWithImpl<$Res, _$UserRequestImpl>
    implements _$$UserRequestImplCopyWith<$Res> {
  __$$UserRequestImplCopyWithImpl(
      _$UserRequestImpl _value, $Res Function(_$UserRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? dateCreated = freezed,
    Object? dateLoggedIn = freezed,
  }) {
    return _then(_$UserRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateLoggedIn: freezed == dateLoggedIn
          ? _value.dateLoggedIn
          : dateLoggedIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$UserRequestImpl implements _UserRequest {
  const _$UserRequestImpl(
      {required this.id,
      this.name,
      @JsonKey(name: 'date_created') this.dateCreated,
      @JsonKey(name: 'date_logged_in') this.dateLoggedIn});

  factory _$UserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRequestImplFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'date_created')
  final DateTime? dateCreated;
  @override
  @JsonKey(name: 'date_logged_in')
  final DateTime? dateLoggedIn;

  @override
  String toString() {
    return 'UserRequest(id: $id, name: $name, dateCreated: $dateCreated, dateLoggedIn: $dateLoggedIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateLoggedIn, dateLoggedIn) ||
                other.dateLoggedIn == dateLoggedIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, dateCreated, dateLoggedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRequestImplCopyWith<_$UserRequestImpl> get copyWith =>
      __$$UserRequestImplCopyWithImpl<_$UserRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRequestImplToJson(
      this,
    );
  }
}

abstract class _UserRequest implements UserRequest {
  const factory _UserRequest(
          {required final String id,
          final String? name,
          @JsonKey(name: 'date_created') final DateTime? dateCreated,
          @JsonKey(name: 'date_logged_in') final DateTime? dateLoggedIn}) =
      _$UserRequestImpl;

  factory _UserRequest.fromJson(Map<String, dynamic> json) =
      _$UserRequestImpl.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'date_created')
  DateTime? get dateCreated;
  @override
  @JsonKey(name: 'date_logged_in')
  DateTime? get dateLoggedIn;
  @override
  @JsonKey(ignore: true)
  _$$UserRequestImplCopyWith<_$UserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
