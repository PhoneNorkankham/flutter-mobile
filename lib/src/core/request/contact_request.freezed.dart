// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactRequest _$ContactRequestFromJson(Map<String, dynamic> json) {
  return _ContactRequest.fromJson(json);
}

/// @nodoc
mixin _$ContactRequest {
  @JsonKey(name: 'id', includeToJson: false)
  String get contactId => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_id')
  String get ownerId => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_no')
  String get phoneNo => throw _privateConstructorUsedError;
  @DateTimeJsonConverter()
  @JsonKey(name: 'date_of_birth')
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  @DateTimeJsonConverter()
  DateTime? get expiration => throw _privateConstructorUsedError;
  @DateTimeJsonConverter()
  @JsonKey(name: 'date_created')
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool get isExpanded => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<String> get groupIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactRequestCopyWith<ContactRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactRequestCopyWith<$Res> {
  factory $ContactRequestCopyWith(
          ContactRequest value, $Res Function(ContactRequest) then) =
      _$ContactRequestCopyWithImpl<$Res, ContactRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', includeToJson: false) String contactId,
      @JsonKey(name: 'owner_id') String ownerId,
      String avatar,
      String name,
      String email,
      @JsonKey(name: 'phone_no') String phoneNo,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_of_birth')
      DateTime? dateOfBirth,
      @DateTimeJsonConverter() DateTime? expiration,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_created')
      DateTime? dateCreated,
      @JsonKey(includeFromJson: false, includeToJson: false) bool isExpanded,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<String> groupIds});
}

/// @nodoc
class _$ContactRequestCopyWithImpl<$Res, $Val extends ContactRequest>
    implements $ContactRequestCopyWith<$Res> {
  _$ContactRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactId = null,
    Object? ownerId = null,
    Object? avatar = null,
    Object? name = null,
    Object? email = null,
    Object? phoneNo = null,
    Object? dateOfBirth = freezed,
    Object? expiration = freezed,
    Object? dateCreated = freezed,
    Object? isExpanded = null,
    Object? groupIds = null,
  }) {
    return _then(_value.copyWith(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNo: null == phoneNo
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      groupIds: null == groupIds
          ? _value.groupIds
          : groupIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactRequestCopyWith<$Res>
    implements $ContactRequestCopyWith<$Res> {
  factory _$$_ContactRequestCopyWith(
          _$_ContactRequest value, $Res Function(_$_ContactRequest) then) =
      __$$_ContactRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', includeToJson: false) String contactId,
      @JsonKey(name: 'owner_id') String ownerId,
      String avatar,
      String name,
      String email,
      @JsonKey(name: 'phone_no') String phoneNo,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_of_birth')
      DateTime? dateOfBirth,
      @DateTimeJsonConverter() DateTime? expiration,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_created')
      DateTime? dateCreated,
      @JsonKey(includeFromJson: false, includeToJson: false) bool isExpanded,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<String> groupIds});
}

/// @nodoc
class __$$_ContactRequestCopyWithImpl<$Res>
    extends _$ContactRequestCopyWithImpl<$Res, _$_ContactRequest>
    implements _$$_ContactRequestCopyWith<$Res> {
  __$$_ContactRequestCopyWithImpl(
      _$_ContactRequest _value, $Res Function(_$_ContactRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactId = null,
    Object? ownerId = null,
    Object? avatar = null,
    Object? name = null,
    Object? email = null,
    Object? phoneNo = null,
    Object? dateOfBirth = freezed,
    Object? expiration = freezed,
    Object? dateCreated = freezed,
    Object? isExpanded = null,
    Object? groupIds = null,
  }) {
    return _then(_$_ContactRequest(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNo: null == phoneNo
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      groupIds: null == groupIds
          ? _value._groupIds
          : groupIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_ContactRequest extends _ContactRequest {
  const _$_ContactRequest(
      {@JsonKey(name: 'id', includeToJson: false) this.contactId = '',
      @JsonKey(name: 'owner_id') this.ownerId = '',
      this.avatar = '',
      this.name = '',
      this.email = '',
      @JsonKey(name: 'phone_no') this.phoneNo = '',
      @DateTimeJsonConverter() @JsonKey(name: 'date_of_birth') this.dateOfBirth,
      @DateTimeJsonConverter() this.expiration,
      @DateTimeJsonConverter() @JsonKey(name: 'date_created') this.dateCreated,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.isExpanded = false,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<String> groupIds = const []})
      : _groupIds = groupIds,
        super._();

  factory _$_ContactRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ContactRequestFromJson(json);

  @override
  @JsonKey(name: 'id', includeToJson: false)
  final String contactId;
  @override
  @JsonKey(name: 'owner_id')
  final String ownerId;
  @override
  @JsonKey()
  final String avatar;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey(name: 'phone_no')
  final String phoneNo;
  @override
  @DateTimeJsonConverter()
  @JsonKey(name: 'date_of_birth')
  final DateTime? dateOfBirth;
  @override
  @DateTimeJsonConverter()
  final DateTime? expiration;
  @override
  @DateTimeJsonConverter()
  @JsonKey(name: 'date_created')
  final DateTime? dateCreated;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final bool isExpanded;
  final List<String> _groupIds;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<String> get groupIds {
    if (_groupIds is EqualUnmodifiableListView) return _groupIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupIds);
  }

  @override
  String toString() {
    return 'ContactRequest(contactId: $contactId, ownerId: $ownerId, avatar: $avatar, name: $name, email: $email, phoneNo: $phoneNo, dateOfBirth: $dateOfBirth, expiration: $expiration, dateCreated: $dateCreated, isExpanded: $isExpanded, groupIds: $groupIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactRequest &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNo, phoneNo) || other.phoneNo == phoneNo) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded) &&
            const DeepCollectionEquality().equals(other._groupIds, _groupIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contactId,
      ownerId,
      avatar,
      name,
      email,
      phoneNo,
      dateOfBirth,
      expiration,
      dateCreated,
      isExpanded,
      const DeepCollectionEquality().hash(_groupIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactRequestCopyWith<_$_ContactRequest> get copyWith =>
      __$$_ContactRequestCopyWithImpl<_$_ContactRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactRequestToJson(
      this,
    );
  }
}

abstract class _ContactRequest extends ContactRequest {
  const factory _ContactRequest(
      {@JsonKey(name: 'id', includeToJson: false) final String contactId,
      @JsonKey(name: 'owner_id') final String ownerId,
      final String avatar,
      final String name,
      final String email,
      @JsonKey(name: 'phone_no') final String phoneNo,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_of_birth')
      final DateTime? dateOfBirth,
      @DateTimeJsonConverter() final DateTime? expiration,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_created')
      final DateTime? dateCreated,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final bool isExpanded,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<String> groupIds}) = _$_ContactRequest;
  const _ContactRequest._() : super._();

  factory _ContactRequest.fromJson(Map<String, dynamic> json) =
      _$_ContactRequest.fromJson;

  @override
  @JsonKey(name: 'id', includeToJson: false)
  String get contactId;
  @override
  @JsonKey(name: 'owner_id')
  String get ownerId;
  @override
  String get avatar;
  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(name: 'phone_no')
  String get phoneNo;
  @override
  @DateTimeJsonConverter()
  @JsonKey(name: 'date_of_birth')
  DateTime? get dateOfBirth;
  @override
  @DateTimeJsonConverter()
  DateTime? get expiration;
  @override
  @DateTimeJsonConverter()
  @JsonKey(name: 'date_created')
  DateTime? get dateCreated;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool get isExpanded;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<String> get groupIds;
  @override
  @JsonKey(ignore: true)
  _$$_ContactRequestCopyWith<_$_ContactRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
