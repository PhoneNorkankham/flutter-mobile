// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactData _$ContactDataFromJson(Map<String, dynamic> json) {
  return _ContactData.fromJson(json);
}

/// @nodoc
mixin _$ContactData {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_id')
  String get groupId => throw _privateConstructorUsedError;
  DateTime? get expiration => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created')
  DateTime? get dateCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactDataCopyWith<ContactData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDataCopyWith<$Res> {
  factory $ContactDataCopyWith(
          ContactData value, $Res Function(ContactData) then) =
      _$ContactDataCopyWithImpl<$Res, ContactData>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'group_id') String groupId,
      DateTime? expiration,
      @JsonKey(name: 'date_created') DateTime? dateCreated});
}

/// @nodoc
class _$ContactDataCopyWithImpl<$Res, $Val extends ContactData>
    implements $ContactDataCopyWith<$Res> {
  _$ContactDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? groupId = null,
    Object? expiration = freezed,
    Object? dateCreated = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactDataCopyWith<$Res>
    implements $ContactDataCopyWith<$Res> {
  factory _$$_ContactDataCopyWith(
          _$_ContactData value, $Res Function(_$_ContactData) then) =
      __$$_ContactDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'group_id') String groupId,
      DateTime? expiration,
      @JsonKey(name: 'date_created') DateTime? dateCreated});
}

/// @nodoc
class __$$_ContactDataCopyWithImpl<$Res>
    extends _$ContactDataCopyWithImpl<$Res, _$_ContactData>
    implements _$$_ContactDataCopyWith<$Res> {
  __$$_ContactDataCopyWithImpl(
      _$_ContactData _value, $Res Function(_$_ContactData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? groupId = null,
    Object? expiration = freezed,
    Object? dateCreated = freezed,
  }) {
    return _then(_$_ContactData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_ContactData implements _ContactData {
  const _$_ContactData(
      {this.id,
      @JsonKey(name: 'user_id') this.userId = '',
      @JsonKey(name: 'group_id') this.groupId = '',
      this.expiration,
      @JsonKey(name: 'date_created') this.dateCreated});

  factory _$_ContactData.fromJson(Map<String, dynamic> json) =>
      _$$_ContactDataFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'group_id')
  final String groupId;
  @override
  final DateTime? expiration;
  @override
  @JsonKey(name: 'date_created')
  final DateTime? dateCreated;

  @override
  String toString() {
    return 'ContactData(id: $id, userId: $userId, groupId: $groupId, expiration: $expiration, dateCreated: $dateCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, groupId, expiration, dateCreated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactDataCopyWith<_$_ContactData> get copyWith =>
      __$$_ContactDataCopyWithImpl<_$_ContactData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactDataToJson(
      this,
    );
  }
}

abstract class _ContactData implements ContactData {
  const factory _ContactData(
          {final String? id,
          @JsonKey(name: 'user_id') final String userId,
          @JsonKey(name: 'group_id') final String groupId,
          final DateTime? expiration,
          @JsonKey(name: 'date_created') final DateTime? dateCreated}) =
      _$_ContactData;

  factory _ContactData.fromJson(Map<String, dynamic> json) =
      _$_ContactData.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'group_id')
  String get groupId;
  @override
  DateTime? get expiration;
  @override
  @JsonKey(name: 'date_created')
  DateTime? get dateCreated;
  @override
  @JsonKey(ignore: true)
  _$$_ContactDataCopyWith<_$_ContactData> get copyWith =>
      throw _privateConstructorUsedError;
}
