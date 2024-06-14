// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupRequest _$GroupRequestFromJson(Map<String, dynamic> json) {
  return _GroupRequest.fromJson(json);
}

/// @nodoc
mixin _$GroupRequest {
  @JsonKey(name: 'id', includeToJson: false)
  String get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_id')
  String get ownerId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'frequency_interval', unknownEnumValue: FrequencyIntervalType.none)
  FrequencyIntervalType get frequencyInterval =>
      throw _privateConstructorUsedError;
  List<String> get contacts => throw _privateConstructorUsedError;
  @DateTimeJsonConverter()
  @JsonKey(name: 'date_created')
  DateTime? get dateCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupRequestCopyWith<GroupRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupRequestCopyWith<$Res> {
  factory $GroupRequestCopyWith(
          GroupRequest value, $Res Function(GroupRequest) then) =
      _$GroupRequestCopyWithImpl<$Res, GroupRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', includeToJson: false) String groupId,
      @JsonKey(name: 'owner_id') String ownerId,
      String name,
      String description,
      String avatar,
      @JsonKey(
          name: 'frequency_interval',
          unknownEnumValue: FrequencyIntervalType.none)
      FrequencyIntervalType frequencyInterval,
      List<String> contacts,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_created')
      DateTime? dateCreated});
}

/// @nodoc
class _$GroupRequestCopyWithImpl<$Res, $Val extends GroupRequest>
    implements $GroupRequestCopyWith<$Res> {
  _$GroupRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? ownerId = null,
    Object? name = null,
    Object? description = null,
    Object? avatar = null,
    Object? frequencyInterval = null,
    Object? contacts = null,
    Object? dateCreated = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      frequencyInterval: null == frequencyInterval
          ? _value.frequencyInterval
          : frequencyInterval // ignore: cast_nullable_to_non_nullable
              as FrequencyIntervalType,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupRequestImplCopyWith<$Res>
    implements $GroupRequestCopyWith<$Res> {
  factory _$$GroupRequestImplCopyWith(
          _$GroupRequestImpl value, $Res Function(_$GroupRequestImpl) then) =
      __$$GroupRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', includeToJson: false) String groupId,
      @JsonKey(name: 'owner_id') String ownerId,
      String name,
      String description,
      String avatar,
      @JsonKey(
          name: 'frequency_interval',
          unknownEnumValue: FrequencyIntervalType.none)
      FrequencyIntervalType frequencyInterval,
      List<String> contacts,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_created')
      DateTime? dateCreated});
}

/// @nodoc
class __$$GroupRequestImplCopyWithImpl<$Res>
    extends _$GroupRequestCopyWithImpl<$Res, _$GroupRequestImpl>
    implements _$$GroupRequestImplCopyWith<$Res> {
  __$$GroupRequestImplCopyWithImpl(
      _$GroupRequestImpl _value, $Res Function(_$GroupRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? ownerId = null,
    Object? name = null,
    Object? description = null,
    Object? avatar = null,
    Object? frequencyInterval = null,
    Object? contacts = null,
    Object? dateCreated = freezed,
  }) {
    return _then(_$GroupRequestImpl(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      frequencyInterval: null == frequencyInterval
          ? _value.frequencyInterval
          : frequencyInterval // ignore: cast_nullable_to_non_nullable
              as FrequencyIntervalType,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$GroupRequestImpl extends _GroupRequest {
  const _$GroupRequestImpl(
      {@JsonKey(name: 'id', includeToJson: false) this.groupId = '',
      @JsonKey(name: 'owner_id') this.ownerId = '',
      this.name = '',
      this.description = '',
      this.avatar = '',
      @JsonKey(
          name: 'frequency_interval',
          unknownEnumValue: FrequencyIntervalType.none)
      this.frequencyInterval = FrequencyIntervalType.none,
      final List<String> contacts = const [],
      @DateTimeJsonConverter() @JsonKey(name: 'date_created') this.dateCreated})
      : _contacts = contacts,
        super._();

  factory _$GroupRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupRequestImplFromJson(json);

  @override
  @JsonKey(name: 'id', includeToJson: false)
  final String groupId;
  @override
  @JsonKey(name: 'owner_id')
  final String ownerId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String avatar;
  @override
  @JsonKey(
      name: 'frequency_interval', unknownEnumValue: FrequencyIntervalType.none)
  final FrequencyIntervalType frequencyInterval;
  final List<String> _contacts;
  @override
  @JsonKey()
  List<String> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  @DateTimeJsonConverter()
  @JsonKey(name: 'date_created')
  final DateTime? dateCreated;

  @override
  String toString() {
    return 'GroupRequest(groupId: $groupId, ownerId: $ownerId, name: $name, description: $description, avatar: $avatar, frequencyInterval: $frequencyInterval, contacts: $contacts, dateCreated: $dateCreated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupRequestImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.frequencyInterval, frequencyInterval) ||
                other.frequencyInterval == frequencyInterval) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupId,
      ownerId,
      name,
      description,
      avatar,
      frequencyInterval,
      const DeepCollectionEquality().hash(_contacts),
      dateCreated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupRequestImplCopyWith<_$GroupRequestImpl> get copyWith =>
      __$$GroupRequestImplCopyWithImpl<_$GroupRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupRequestImplToJson(
      this,
    );
  }
}

abstract class _GroupRequest extends GroupRequest {
  const factory _GroupRequest(
      {@JsonKey(name: 'id', includeToJson: false) final String groupId,
      @JsonKey(name: 'owner_id') final String ownerId,
      final String name,
      final String description,
      final String avatar,
      @JsonKey(
          name: 'frequency_interval',
          unknownEnumValue: FrequencyIntervalType.none)
      final FrequencyIntervalType frequencyInterval,
      final List<String> contacts,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_created')
      final DateTime? dateCreated}) = _$GroupRequestImpl;
  const _GroupRequest._() : super._();

  factory _GroupRequest.fromJson(Map<String, dynamic> json) =
      _$GroupRequestImpl.fromJson;

  @override
  @JsonKey(name: 'id', includeToJson: false)
  String get groupId;
  @override
  @JsonKey(name: 'owner_id')
  String get ownerId;
  @override
  String get name;
  @override
  String get description;
  @override
  String get avatar;
  @override
  @JsonKey(
      name: 'frequency_interval', unknownEnumValue: FrequencyIntervalType.none)
  FrequencyIntervalType get frequencyInterval;
  @override
  List<String> get contacts;
  @override
  @DateTimeJsonConverter()
  @JsonKey(name: 'date_created')
  DateTime? get dateCreated;
  @override
  @JsonKey(ignore: true)
  _$$GroupRequestImplCopyWith<_$GroupRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
