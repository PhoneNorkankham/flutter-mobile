// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InteractionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(InteractionMethodType type) onInteraction,
    required TResult Function(Contact contact) onDeleteContact,
    required TResult Function(File file) onChangedAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(InteractionMethodType type)? onInteraction,
    TResult? Function(Contact contact)? onDeleteContact,
    TResult? Function(File file)? onChangedAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(InteractionMethodType type)? onInteraction,
    TResult Function(Contact contact)? onDeleteContact,
    TResult Function(File file)? onChangedAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnInteraction value) onInteraction,
    required TResult Function(_OnDeleteContact value) onDeleteContact,
    required TResult Function(_OnChangedAvatar value) onChangedAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnInteraction value)? onInteraction,
    TResult? Function(_OnDeleteContact value)? onDeleteContact,
    TResult? Function(_OnChangedAvatar value)? onChangedAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnInteraction value)? onInteraction,
    TResult Function(_OnDeleteContact value)? onDeleteContact,
    TResult Function(_OnChangedAvatar value)? onChangedAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractionEventCopyWith<$Res> {
  factory $InteractionEventCopyWith(
          InteractionEvent value, $Res Function(InteractionEvent) then) =
      _$InteractionEventCopyWithImpl<$Res, InteractionEvent>;
}

/// @nodoc
class _$InteractionEventCopyWithImpl<$Res, $Val extends InteractionEvent>
    implements $InteractionEventCopyWith<$Res> {
  _$InteractionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Contact contact});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$InteractionEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
  }) {
    return _then(_$InitialImpl(
      freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.contact);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'InteractionEvent.initial(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other.contact, contact));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(contact));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(InteractionMethodType type) onInteraction,
    required TResult Function(Contact contact) onDeleteContact,
    required TResult Function(File file) onChangedAvatar,
  }) {
    return initial(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(InteractionMethodType type)? onInteraction,
    TResult? Function(Contact contact)? onDeleteContact,
    TResult? Function(File file)? onChangedAvatar,
  }) {
    return initial?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(InteractionMethodType type)? onInteraction,
    TResult Function(Contact contact)? onDeleteContact,
    TResult Function(File file)? onChangedAvatar,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnInteraction value) onInteraction,
    required TResult Function(_OnDeleteContact value) onDeleteContact,
    required TResult Function(_OnChangedAvatar value) onChangedAvatar,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnInteraction value)? onInteraction,
    TResult? Function(_OnDeleteContact value)? onDeleteContact,
    TResult? Function(_OnChangedAvatar value)? onChangedAvatar,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnInteraction value)? onInteraction,
    TResult Function(_OnDeleteContact value)? onDeleteContact,
    TResult Function(_OnChangedAvatar value)? onChangedAvatar,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements InteractionEvent {
  const factory _Initial(final Contact contact) = _$InitialImpl;

  Contact get contact;
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPageCommandImplCopyWith<$Res> {
  factory _$$ClearPageCommandImplCopyWith(_$ClearPageCommandImpl value,
          $Res Function(_$ClearPageCommandImpl) then) =
      __$$ClearPageCommandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPageCommandImplCopyWithImpl<$Res>
    extends _$InteractionEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'InteractionEvent.clearPageCommand()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearPageCommandImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(InteractionMethodType type) onInteraction,
    required TResult Function(Contact contact) onDeleteContact,
    required TResult Function(File file) onChangedAvatar,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(InteractionMethodType type)? onInteraction,
    TResult? Function(Contact contact)? onDeleteContact,
    TResult? Function(File file)? onChangedAvatar,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(InteractionMethodType type)? onInteraction,
    TResult Function(Contact contact)? onDeleteContact,
    TResult Function(File file)? onChangedAvatar,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnInteraction value) onInteraction,
    required TResult Function(_OnDeleteContact value) onDeleteContact,
    required TResult Function(_OnChangedAvatar value) onChangedAvatar,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnInteraction value)? onInteraction,
    TResult? Function(_OnDeleteContact value)? onDeleteContact,
    TResult? Function(_OnChangedAvatar value)? onChangedAvatar,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnInteraction value)? onInteraction,
    TResult Function(_OnDeleteContact value)? onDeleteContact,
    TResult Function(_OnChangedAvatar value)? onChangedAvatar,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements InteractionEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
abstract class _$$OnInteractionImplCopyWith<$Res> {
  factory _$$OnInteractionImplCopyWith(
          _$OnInteractionImpl value, $Res Function(_$OnInteractionImpl) then) =
      __$$OnInteractionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InteractionMethodType type});
}

/// @nodoc
class __$$OnInteractionImplCopyWithImpl<$Res>
    extends _$InteractionEventCopyWithImpl<$Res, _$OnInteractionImpl>
    implements _$$OnInteractionImplCopyWith<$Res> {
  __$$OnInteractionImplCopyWithImpl(
      _$OnInteractionImpl _value, $Res Function(_$OnInteractionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$OnInteractionImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InteractionMethodType,
    ));
  }
}

/// @nodoc

class _$OnInteractionImpl implements _OnInteraction {
  const _$OnInteractionImpl(this.type);

  @override
  final InteractionMethodType type;

  @override
  String toString() {
    return 'InteractionEvent.onInteraction(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnInteractionImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnInteractionImplCopyWith<_$OnInteractionImpl> get copyWith =>
      __$$OnInteractionImplCopyWithImpl<_$OnInteractionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(InteractionMethodType type) onInteraction,
    required TResult Function(Contact contact) onDeleteContact,
    required TResult Function(File file) onChangedAvatar,
  }) {
    return onInteraction(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(InteractionMethodType type)? onInteraction,
    TResult? Function(Contact contact)? onDeleteContact,
    TResult? Function(File file)? onChangedAvatar,
  }) {
    return onInteraction?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(InteractionMethodType type)? onInteraction,
    TResult Function(Contact contact)? onDeleteContact,
    TResult Function(File file)? onChangedAvatar,
    required TResult orElse(),
  }) {
    if (onInteraction != null) {
      return onInteraction(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnInteraction value) onInteraction,
    required TResult Function(_OnDeleteContact value) onDeleteContact,
    required TResult Function(_OnChangedAvatar value) onChangedAvatar,
  }) {
    return onInteraction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnInteraction value)? onInteraction,
    TResult? Function(_OnDeleteContact value)? onDeleteContact,
    TResult? Function(_OnChangedAvatar value)? onChangedAvatar,
  }) {
    return onInteraction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnInteraction value)? onInteraction,
    TResult Function(_OnDeleteContact value)? onDeleteContact,
    TResult Function(_OnChangedAvatar value)? onChangedAvatar,
    required TResult orElse(),
  }) {
    if (onInteraction != null) {
      return onInteraction(this);
    }
    return orElse();
  }
}

abstract class _OnInteraction implements InteractionEvent {
  const factory _OnInteraction(final InteractionMethodType type) =
      _$OnInteractionImpl;

  InteractionMethodType get type;
  @JsonKey(ignore: true)
  _$$OnInteractionImplCopyWith<_$OnInteractionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnDeleteContactImplCopyWith<$Res> {
  factory _$$OnDeleteContactImplCopyWith(_$OnDeleteContactImpl value,
          $Res Function(_$OnDeleteContactImpl) then) =
      __$$OnDeleteContactImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Contact contact});
}

/// @nodoc
class __$$OnDeleteContactImplCopyWithImpl<$Res>
    extends _$InteractionEventCopyWithImpl<$Res, _$OnDeleteContactImpl>
    implements _$$OnDeleteContactImplCopyWith<$Res> {
  __$$OnDeleteContactImplCopyWithImpl(
      _$OnDeleteContactImpl _value, $Res Function(_$OnDeleteContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
  }) {
    return _then(_$OnDeleteContactImpl(
      freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$OnDeleteContactImpl implements _OnDeleteContact {
  const _$OnDeleteContactImpl(this.contact);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'InteractionEvent.onDeleteContact(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDeleteContactImpl &&
            const DeepCollectionEquality().equals(other.contact, contact));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(contact));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDeleteContactImplCopyWith<_$OnDeleteContactImpl> get copyWith =>
      __$$OnDeleteContactImplCopyWithImpl<_$OnDeleteContactImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(InteractionMethodType type) onInteraction,
    required TResult Function(Contact contact) onDeleteContact,
    required TResult Function(File file) onChangedAvatar,
  }) {
    return onDeleteContact(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(InteractionMethodType type)? onInteraction,
    TResult? Function(Contact contact)? onDeleteContact,
    TResult? Function(File file)? onChangedAvatar,
  }) {
    return onDeleteContact?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(InteractionMethodType type)? onInteraction,
    TResult Function(Contact contact)? onDeleteContact,
    TResult Function(File file)? onChangedAvatar,
    required TResult orElse(),
  }) {
    if (onDeleteContact != null) {
      return onDeleteContact(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnInteraction value) onInteraction,
    required TResult Function(_OnDeleteContact value) onDeleteContact,
    required TResult Function(_OnChangedAvatar value) onChangedAvatar,
  }) {
    return onDeleteContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnInteraction value)? onInteraction,
    TResult? Function(_OnDeleteContact value)? onDeleteContact,
    TResult? Function(_OnChangedAvatar value)? onChangedAvatar,
  }) {
    return onDeleteContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnInteraction value)? onInteraction,
    TResult Function(_OnDeleteContact value)? onDeleteContact,
    TResult Function(_OnChangedAvatar value)? onChangedAvatar,
    required TResult orElse(),
  }) {
    if (onDeleteContact != null) {
      return onDeleteContact(this);
    }
    return orElse();
  }
}

abstract class _OnDeleteContact implements InteractionEvent {
  const factory _OnDeleteContact(final Contact contact) = _$OnDeleteContactImpl;

  Contact get contact;
  @JsonKey(ignore: true)
  _$$OnDeleteContactImplCopyWith<_$OnDeleteContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnChangedAvatarImplCopyWith<$Res> {
  factory _$$OnChangedAvatarImplCopyWith(_$OnChangedAvatarImpl value,
          $Res Function(_$OnChangedAvatarImpl) then) =
      __$$OnChangedAvatarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$OnChangedAvatarImplCopyWithImpl<$Res>
    extends _$InteractionEventCopyWithImpl<$Res, _$OnChangedAvatarImpl>
    implements _$$OnChangedAvatarImplCopyWith<$Res> {
  __$$OnChangedAvatarImplCopyWithImpl(
      _$OnChangedAvatarImpl _value, $Res Function(_$OnChangedAvatarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$OnChangedAvatarImpl(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$OnChangedAvatarImpl implements _OnChangedAvatar {
  const _$OnChangedAvatarImpl(this.file);

  @override
  final File file;

  @override
  String toString() {
    return 'InteractionEvent.onChangedAvatar(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangedAvatarImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangedAvatarImplCopyWith<_$OnChangedAvatarImpl> get copyWith =>
      __$$OnChangedAvatarImplCopyWithImpl<_$OnChangedAvatarImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(InteractionMethodType type) onInteraction,
    required TResult Function(Contact contact) onDeleteContact,
    required TResult Function(File file) onChangedAvatar,
  }) {
    return onChangedAvatar(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(InteractionMethodType type)? onInteraction,
    TResult? Function(Contact contact)? onDeleteContact,
    TResult? Function(File file)? onChangedAvatar,
  }) {
    return onChangedAvatar?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(InteractionMethodType type)? onInteraction,
    TResult Function(Contact contact)? onDeleteContact,
    TResult Function(File file)? onChangedAvatar,
    required TResult orElse(),
  }) {
    if (onChangedAvatar != null) {
      return onChangedAvatar(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnInteraction value) onInteraction,
    required TResult Function(_OnDeleteContact value) onDeleteContact,
    required TResult Function(_OnChangedAvatar value) onChangedAvatar,
  }) {
    return onChangedAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnInteraction value)? onInteraction,
    TResult? Function(_OnDeleteContact value)? onDeleteContact,
    TResult? Function(_OnChangedAvatar value)? onChangedAvatar,
  }) {
    return onChangedAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnInteraction value)? onInteraction,
    TResult Function(_OnDeleteContact value)? onDeleteContact,
    TResult Function(_OnChangedAvatar value)? onChangedAvatar,
    required TResult orElse(),
  }) {
    if (onChangedAvatar != null) {
      return onChangedAvatar(this);
    }
    return orElse();
  }
}

abstract class _OnChangedAvatar implements InteractionEvent {
  const factory _OnChangedAvatar(final File file) = _$OnChangedAvatarImpl;

  File get file;
  @JsonKey(ignore: true)
  _$$OnChangedAvatarImplCopyWith<_$OnChangedAvatarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InteractionState {
  PageCommand? get pageCommand => throw _privateConstructorUsedError;
  PageState get pageState => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Contact? get contact => throw _privateConstructorUsedError;
  File? get avatar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InteractionStateCopyWith<InteractionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractionStateCopyWith<$Res> {
  factory $InteractionStateCopyWith(
          InteractionState value, $Res Function(InteractionState) then) =
      _$InteractionStateCopyWithImpl<$Res, InteractionState>;
  @useResult
  $Res call(
      {PageCommand? pageCommand,
      PageState pageState,
      bool isLoading,
      Contact? contact,
      File? avatar});

  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class _$InteractionStateCopyWithImpl<$Res, $Val extends InteractionState>
    implements $InteractionStateCopyWith<$Res> {
  _$InteractionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageCommand = freezed,
    Object? pageState = null,
    Object? isLoading = null,
    Object? contact = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      pageCommand: freezed == pageCommand
          ? _value.pageCommand
          : pageCommand // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageCommandCopyWith<$Res>? get pageCommand {
    if (_value.pageCommand == null) {
      return null;
    }

    return $PageCommandCopyWith<$Res>(_value.pageCommand!, (value) {
      return _then(_value.copyWith(pageCommand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InteractionStateImplCopyWith<$Res>
    implements $InteractionStateCopyWith<$Res> {
  factory _$$InteractionStateImplCopyWith(_$InteractionStateImpl value,
          $Res Function(_$InteractionStateImpl) then) =
      __$$InteractionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageCommand? pageCommand,
      PageState pageState,
      bool isLoading,
      Contact? contact,
      File? avatar});

  @override
  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class __$$InteractionStateImplCopyWithImpl<$Res>
    extends _$InteractionStateCopyWithImpl<$Res, _$InteractionStateImpl>
    implements _$$InteractionStateImplCopyWith<$Res> {
  __$$InteractionStateImplCopyWithImpl(_$InteractionStateImpl _value,
      $Res Function(_$InteractionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageCommand = freezed,
    Object? pageState = null,
    Object? isLoading = null,
    Object? contact = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$InteractionStateImpl(
      pageCommand: freezed == pageCommand
          ? _value.pageCommand
          : pageCommand // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$InteractionStateImpl extends _InteractionState {
  const _$InteractionStateImpl(
      {this.pageCommand,
      this.pageState = PageState.loading,
      this.isLoading = false,
      this.contact,
      this.avatar})
      : super._();

  @override
  final PageCommand? pageCommand;
  @override
  @JsonKey()
  final PageState pageState;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Contact? contact;
  @override
  final File? avatar;

  @override
  String toString() {
    return 'InteractionState(pageCommand: $pageCommand, pageState: $pageState, isLoading: $isLoading, contact: $contact, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InteractionStateImpl &&
            (identical(other.pageCommand, pageCommand) ||
                other.pageCommand == pageCommand) &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.contact, contact) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageCommand, pageState,
      isLoading, const DeepCollectionEquality().hash(contact), avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InteractionStateImplCopyWith<_$InteractionStateImpl> get copyWith =>
      __$$InteractionStateImplCopyWithImpl<_$InteractionStateImpl>(
          this, _$identity);
}

abstract class _InteractionState extends InteractionState {
  const factory _InteractionState(
      {final PageCommand? pageCommand,
      final PageState pageState,
      final bool isLoading,
      final Contact? contact,
      final File? avatar}) = _$InteractionStateImpl;
  const _InteractionState._() : super._();

  @override
  PageCommand? get pageCommand;
  @override
  PageState get pageState;
  @override
  bool get isLoading;
  @override
  Contact? get contact;
  @override
  File? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$InteractionStateImplCopyWith<_$InteractionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
