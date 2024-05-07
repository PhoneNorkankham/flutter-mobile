// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_contact_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddContactRequest _$AddContactRequestFromJson(Map<String, dynamic> json) {
  return _AddContactRequest.fromJson(json);
}

/// @nodoc
mixin _$AddContactRequest {
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
  @ListStringJsonConverter()
  List<bool> get frequency => throw _privateConstructorUsedError;
  @DateTimeJsonConverter()
  DateTime? get expiration => throw _privateConstructorUsedError;
  @DateTimeJsonConverter()
  @JsonKey(name: 'date_created')
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  List<String> get groupIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddContactRequestCopyWith<AddContactRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddContactRequestCopyWith<$Res> {
  factory $AddContactRequestCopyWith(
          AddContactRequest value, $Res Function(AddContactRequest) then) =
      _$AddContactRequestCopyWithImpl<$Res, AddContactRequest>;
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
      @ListStringJsonConverter() List<bool> frequency,
      @DateTimeJsonConverter() DateTime? expiration,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_created')
      DateTime? dateCreated,
      bool isExpanded,
      bool isSelected,
      List<String> groupIds});
}

/// @nodoc
class _$AddContactRequestCopyWithImpl<$Res, $Val extends AddContactRequest>
    implements $AddContactRequestCopyWith<$Res> {
  _$AddContactRequestCopyWithImpl(this._value, this._then);

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
    Object? frequency = null,
    Object? expiration = freezed,
    Object? dateCreated = freezed,
    Object? isExpanded = null,
    Object? isSelected = null,
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
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as List<bool>,
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
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      groupIds: null == groupIds
          ? _value.groupIds
          : groupIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddContactRequestCopyWith<$Res>
    implements $AddContactRequestCopyWith<$Res> {
  factory _$$_AddContactRequestCopyWith(_$_AddContactRequest value,
          $Res Function(_$_AddContactRequest) then) =
      __$$_AddContactRequestCopyWithImpl<$Res>;
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
      @ListStringJsonConverter() List<bool> frequency,
      @DateTimeJsonConverter() DateTime? expiration,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_created')
      DateTime? dateCreated,
      bool isExpanded,
      bool isSelected,
      List<String> groupIds});
}

/// @nodoc
class __$$_AddContactRequestCopyWithImpl<$Res>
    extends _$AddContactRequestCopyWithImpl<$Res, _$_AddContactRequest>
    implements _$$_AddContactRequestCopyWith<$Res> {
  __$$_AddContactRequestCopyWithImpl(
      _$_AddContactRequest _value, $Res Function(_$_AddContactRequest) _then)
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
    Object? frequency = null,
    Object? expiration = freezed,
    Object? dateCreated = freezed,
    Object? isExpanded = null,
    Object? isSelected = null,
    Object? groupIds = null,
  }) {
    return _then(_$_AddContactRequest(
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
      frequency: null == frequency
          ? _value._frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as List<bool>,
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
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
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
class _$_AddContactRequest extends _AddContactRequest {
  const _$_AddContactRequest(
      {@JsonKey(name: 'id', includeToJson: false) this.contactId = '',
      @JsonKey(name: 'owner_id') this.ownerId = '',
      this.avatar = '',
      this.name = '',
      this.email = '',
      @JsonKey(name: 'phone_no') this.phoneNo = '',
      @DateTimeJsonConverter() @JsonKey(name: 'date_of_birth') this.dateOfBirth,
      @ListStringJsonConverter() final List<bool> frequency = const [],
      @DateTimeJsonConverter() this.expiration,
      @DateTimeJsonConverter() @JsonKey(name: 'date_created') this.dateCreated,
      this.isExpanded = false,
      this.isSelected = false,
      final List<String> groupIds = const []})
      : _frequency = frequency,
        _groupIds = groupIds,
        super._();

  factory _$_AddContactRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AddContactRequestFromJson(json);

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
  final List<bool> _frequency;
  @override
  @JsonKey()
  @ListStringJsonConverter()
  List<bool> get frequency {
    if (_frequency is EqualUnmodifiableListView) return _frequency;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_frequency);
  }

  @override
  @DateTimeJsonConverter()
  final DateTime? expiration;
  @override
  @DateTimeJsonConverter()
  @JsonKey(name: 'date_created')
  final DateTime? dateCreated;
  @override
  @JsonKey()
  final bool isExpanded;
  @override
  @JsonKey()
  final bool isSelected;
  final List<String> _groupIds;
  @override
  @JsonKey()
  List<String> get groupIds {
    if (_groupIds is EqualUnmodifiableListView) return _groupIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupIds);
  }

  @override
  String toString() {
    return 'AddContactRequest(contactId: $contactId, ownerId: $ownerId, avatar: $avatar, name: $name, email: $email, phoneNo: $phoneNo, dateOfBirth: $dateOfBirth, frequency: $frequency, expiration: $expiration, dateCreated: $dateCreated, isExpanded: $isExpanded, isSelected: $isSelected, groupIds: $groupIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddContactRequest &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNo, phoneNo) || other.phoneNo == phoneNo) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            const DeepCollectionEquality()
                .equals(other._frequency, _frequency) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
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
      const DeepCollectionEquality().hash(_frequency),
      expiration,
      dateCreated,
      isExpanded,
      isSelected,
      const DeepCollectionEquality().hash(_groupIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddContactRequestCopyWith<_$_AddContactRequest> get copyWith =>
      __$$_AddContactRequestCopyWithImpl<_$_AddContactRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddContactRequestToJson(
      this,
    );
  }
}

abstract class _AddContactRequest extends AddContactRequest {
  const factory _AddContactRequest(
      {@JsonKey(name: 'id', includeToJson: false) final String contactId,
      @JsonKey(name: 'owner_id') final String ownerId,
      final String avatar,
      final String name,
      final String email,
      @JsonKey(name: 'phone_no') final String phoneNo,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_of_birth')
      final DateTime? dateOfBirth,
      @ListStringJsonConverter() final List<bool> frequency,
      @DateTimeJsonConverter() final DateTime? expiration,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_created')
      final DateTime? dateCreated,
      final bool isExpanded,
      final bool isSelected,
      final List<String> groupIds}) = _$_AddContactRequest;
  const _AddContactRequest._() : super._();

  factory _AddContactRequest.fromJson(Map<String, dynamic> json) =
      _$_AddContactRequest.fromJson;

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
  @ListStringJsonConverter()
  List<bool> get frequency;
  @override
  @DateTimeJsonConverter()
  DateTime? get expiration;
  @override
  @DateTimeJsonConverter()
  @JsonKey(name: 'date_created')
  DateTime? get dateCreated;
  @override
  bool get isExpanded;
  @override
  bool get isSelected;
  @override
  List<String> get groupIds;
  @override
  @JsonKey(ignore: true)
  _$$_AddContactRequestCopyWith<_$_AddContactRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
