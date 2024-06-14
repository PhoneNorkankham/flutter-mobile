// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interaction_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InteractionRequest _$InteractionRequestFromJson(Map<String, dynamic> json) {
  return _InteractionRequest.fromJson(json);
}

/// @nodoc
mixin _$InteractionRequest {
  @JsonKey(name: 'id', includeToJson: false)
  String get interactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_id')
  String get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_id')
  String get contactId => throw _privateConstructorUsedError;
  @DateTimeJsonConverter()
  @JsonKey(name: 'date_completed')
  DateTime? get dateCompleted => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: InteractionMethodType.KeepUp)
  InteractionMethodType get method => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InteractionRequestCopyWith<InteractionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractionRequestCopyWith<$Res> {
  factory $InteractionRequestCopyWith(
          InteractionRequest value, $Res Function(InteractionRequest) then) =
      _$InteractionRequestCopyWithImpl<$Res, InteractionRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', includeToJson: false) String interactionId,
      @JsonKey(name: 'owner_id') String ownerId,
      @JsonKey(name: 'contact_id') String contactId,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_completed')
      DateTime? dateCompleted,
      @JsonKey(unknownEnumValue: InteractionMethodType.KeepUp)
      InteractionMethodType method});
}

/// @nodoc
class _$InteractionRequestCopyWithImpl<$Res, $Val extends InteractionRequest>
    implements $InteractionRequestCopyWith<$Res> {
  _$InteractionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interactionId = null,
    Object? ownerId = null,
    Object? contactId = null,
    Object? dateCompleted = freezed,
    Object? method = null,
  }) {
    return _then(_value.copyWith(
      interactionId: null == interactionId
          ? _value.interactionId
          : interactionId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      dateCompleted: freezed == dateCompleted
          ? _value.dateCompleted
          : dateCompleted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as InteractionMethodType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InteractionRequestImplCopyWith<$Res>
    implements $InteractionRequestCopyWith<$Res> {
  factory _$$InteractionRequestImplCopyWith(_$InteractionRequestImpl value,
          $Res Function(_$InteractionRequestImpl) then) =
      __$$InteractionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', includeToJson: false) String interactionId,
      @JsonKey(name: 'owner_id') String ownerId,
      @JsonKey(name: 'contact_id') String contactId,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_completed')
      DateTime? dateCompleted,
      @JsonKey(unknownEnumValue: InteractionMethodType.KeepUp)
      InteractionMethodType method});
}

/// @nodoc
class __$$InteractionRequestImplCopyWithImpl<$Res>
    extends _$InteractionRequestCopyWithImpl<$Res, _$InteractionRequestImpl>
    implements _$$InteractionRequestImplCopyWith<$Res> {
  __$$InteractionRequestImplCopyWithImpl(_$InteractionRequestImpl _value,
      $Res Function(_$InteractionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interactionId = null,
    Object? ownerId = null,
    Object? contactId = null,
    Object? dateCompleted = freezed,
    Object? method = null,
  }) {
    return _then(_$InteractionRequestImpl(
      interactionId: null == interactionId
          ? _value.interactionId
          : interactionId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      dateCompleted: freezed == dateCompleted
          ? _value.dateCompleted
          : dateCompleted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as InteractionMethodType,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$InteractionRequestImpl extends _InteractionRequest {
  const _$InteractionRequestImpl(
      {@JsonKey(name: 'id', includeToJson: false) this.interactionId = '',
      @JsonKey(name: 'owner_id') this.ownerId = '',
      @JsonKey(name: 'contact_id') this.contactId = '',
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_completed')
      this.dateCompleted,
      @JsonKey(unknownEnumValue: InteractionMethodType.KeepUp)
      this.method = InteractionMethodType.KeepUp})
      : super._();

  factory _$InteractionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$InteractionRequestImplFromJson(json);

  @override
  @JsonKey(name: 'id', includeToJson: false)
  final String interactionId;
  @override
  @JsonKey(name: 'owner_id')
  final String ownerId;
  @override
  @JsonKey(name: 'contact_id')
  final String contactId;
  @override
  @DateTimeJsonConverter()
  @JsonKey(name: 'date_completed')
  final DateTime? dateCompleted;
  @override
  @JsonKey(unknownEnumValue: InteractionMethodType.KeepUp)
  final InteractionMethodType method;

  @override
  String toString() {
    return 'InteractionRequest(interactionId: $interactionId, ownerId: $ownerId, contactId: $contactId, dateCompleted: $dateCompleted, method: $method)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InteractionRequestImpl &&
            (identical(other.interactionId, interactionId) ||
                other.interactionId == interactionId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId) &&
            (identical(other.dateCompleted, dateCompleted) ||
                other.dateCompleted == dateCompleted) &&
            (identical(other.method, method) || other.method == method));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, interactionId, ownerId, contactId, dateCompleted, method);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InteractionRequestImplCopyWith<_$InteractionRequestImpl> get copyWith =>
      __$$InteractionRequestImplCopyWithImpl<_$InteractionRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InteractionRequestImplToJson(
      this,
    );
  }
}

abstract class _InteractionRequest extends InteractionRequest {
  const factory _InteractionRequest(
      {@JsonKey(name: 'id', includeToJson: false) final String interactionId,
      @JsonKey(name: 'owner_id') final String ownerId,
      @JsonKey(name: 'contact_id') final String contactId,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_completed')
      final DateTime? dateCompleted,
      @JsonKey(unknownEnumValue: InteractionMethodType.KeepUp)
      final InteractionMethodType method}) = _$InteractionRequestImpl;
  const _InteractionRequest._() : super._();

  factory _InteractionRequest.fromJson(Map<String, dynamic> json) =
      _$InteractionRequestImpl.fromJson;

  @override
  @JsonKey(name: 'id', includeToJson: false)
  String get interactionId;
  @override
  @JsonKey(name: 'owner_id')
  String get ownerId;
  @override
  @JsonKey(name: 'contact_id')
  String get contactId;
  @override
  @DateTimeJsonConverter()
  @JsonKey(name: 'date_completed')
  DateTime? get dateCompleted;
  @override
  @JsonKey(unknownEnumValue: InteractionMethodType.KeepUp)
  InteractionMethodType get method;
  @override
  @JsonKey(ignore: true)
  _$$InteractionRequestImplCopyWith<_$InteractionRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
