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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  @JsonKey(unknownEnumValue: InteractionMethodType.None)
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
      @JsonKey(unknownEnumValue: InteractionMethodType.None)
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
abstract class _$$_InteractionRequestCopyWith<$Res>
    implements $InteractionRequestCopyWith<$Res> {
  factory _$$_InteractionRequestCopyWith(_$_InteractionRequest value,
          $Res Function(_$_InteractionRequest) then) =
      __$$_InteractionRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', includeToJson: false) String interactionId,
      @JsonKey(name: 'owner_id') String ownerId,
      @JsonKey(name: 'contact_id') String contactId,
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_completed')
      DateTime? dateCompleted,
      @JsonKey(unknownEnumValue: InteractionMethodType.None)
      InteractionMethodType method});
}

/// @nodoc
class __$$_InteractionRequestCopyWithImpl<$Res>
    extends _$InteractionRequestCopyWithImpl<$Res, _$_InteractionRequest>
    implements _$$_InteractionRequestCopyWith<$Res> {
  __$$_InteractionRequestCopyWithImpl(
      _$_InteractionRequest _value, $Res Function(_$_InteractionRequest) _then)
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
    return _then(_$_InteractionRequest(
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
class _$_InteractionRequest extends _InteractionRequest {
  const _$_InteractionRequest(
      {@JsonKey(name: 'id', includeToJson: false) this.interactionId = '',
      @JsonKey(name: 'owner_id') this.ownerId = '',
      @JsonKey(name: 'contact_id') this.contactId = '',
      @DateTimeJsonConverter()
      @JsonKey(name: 'date_completed')
      this.dateCompleted,
      @JsonKey(unknownEnumValue: InteractionMethodType.None)
      this.method = InteractionMethodType.None})
      : super._();

  factory _$_InteractionRequest.fromJson(Map<String, dynamic> json) =>
      _$$_InteractionRequestFromJson(json);

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
  @JsonKey(unknownEnumValue: InteractionMethodType.None)
  final InteractionMethodType method;

  @override
  String toString() {
    return 'InteractionRequest(interactionId: $interactionId, ownerId: $ownerId, contactId: $contactId, dateCompleted: $dateCompleted, method: $method)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InteractionRequest &&
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
  _$$_InteractionRequestCopyWith<_$_InteractionRequest> get copyWith =>
      __$$_InteractionRequestCopyWithImpl<_$_InteractionRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InteractionRequestToJson(
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
      @JsonKey(unknownEnumValue: InteractionMethodType.None)
      final InteractionMethodType method}) = _$_InteractionRequest;
  const _InteractionRequest._() : super._();

  factory _InteractionRequest.fromJson(Map<String, dynamic> json) =
      _$_InteractionRequest.fromJson;

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
  @JsonKey(unknownEnumValue: InteractionMethodType.None)
  InteractionMethodType get method;
  @override
  @JsonKey(ignore: true)
  _$$_InteractionRequestCopyWith<_$_InteractionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
