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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InteractionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(InteractionMethodType type) onInteraction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(InteractionMethodType type)? onInteraction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(InteractionMethodType type)? onInteraction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnInteraction value) onInteraction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnInteraction value)? onInteraction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnInteraction value)? onInteraction,
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
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @useResult
  $Res call({Contact contact});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$InteractionEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
  }) {
    return _then(_$_Initial(
      freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.contact);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'InteractionEvent.initial(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.contact, contact));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(contact));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(InteractionMethodType type) onInteraction,
  }) {
    return initial(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(InteractionMethodType type)? onInteraction,
  }) {
    return initial?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(InteractionMethodType type)? onInteraction,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnInteraction value)? onInteraction,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnInteraction value)? onInteraction,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements InteractionEvent {
  const factory _Initial(final Contact contact) = _$_Initial;

  Contact get contact;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearPageCommandCopyWith<$Res> {
  factory _$$_ClearPageCommandCopyWith(
          _$_ClearPageCommand value, $Res Function(_$_ClearPageCommand) then) =
      __$$_ClearPageCommandCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearPageCommandCopyWithImpl<$Res>
    extends _$InteractionEventCopyWithImpl<$Res, _$_ClearPageCommand>
    implements _$$_ClearPageCommandCopyWith<$Res> {
  __$$_ClearPageCommandCopyWithImpl(
      _$_ClearPageCommand _value, $Res Function(_$_ClearPageCommand) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearPageCommand implements _ClearPageCommand {
  const _$_ClearPageCommand();

  @override
  String toString() {
    return 'InteractionEvent.clearPageCommand()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearPageCommand);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(InteractionMethodType type) onInteraction,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(InteractionMethodType type)? onInteraction,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(InteractionMethodType type)? onInteraction,
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
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnInteraction value)? onInteraction,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnInteraction value)? onInteraction,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements InteractionEvent {
  const factory _ClearPageCommand() = _$_ClearPageCommand;
}

/// @nodoc
abstract class _$$_OnInteractionCopyWith<$Res> {
  factory _$$_OnInteractionCopyWith(
          _$_OnInteraction value, $Res Function(_$_OnInteraction) then) =
      __$$_OnInteractionCopyWithImpl<$Res>;
  @useResult
  $Res call({InteractionMethodType type});
}

/// @nodoc
class __$$_OnInteractionCopyWithImpl<$Res>
    extends _$InteractionEventCopyWithImpl<$Res, _$_OnInteraction>
    implements _$$_OnInteractionCopyWith<$Res> {
  __$$_OnInteractionCopyWithImpl(
      _$_OnInteraction _value, $Res Function(_$_OnInteraction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_OnInteraction(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InteractionMethodType,
    ));
  }
}

/// @nodoc

class _$_OnInteraction implements _OnInteraction {
  const _$_OnInteraction(this.type);

  @override
  final InteractionMethodType type;

  @override
  String toString() {
    return 'InteractionEvent.onInteraction(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnInteraction &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnInteractionCopyWith<_$_OnInteraction> get copyWith =>
      __$$_OnInteractionCopyWithImpl<_$_OnInteraction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(InteractionMethodType type) onInteraction,
  }) {
    return onInteraction(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(InteractionMethodType type)? onInteraction,
  }) {
    return onInteraction?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(InteractionMethodType type)? onInteraction,
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
  }) {
    return onInteraction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnInteraction value)? onInteraction,
  }) {
    return onInteraction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnInteraction value)? onInteraction,
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
      _$_OnInteraction;

  InteractionMethodType get type;
  @JsonKey(ignore: true)
  _$$_OnInteractionCopyWith<_$_OnInteraction> get copyWith =>
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
abstract class _$$_InteractionStateCopyWith<$Res>
    implements $InteractionStateCopyWith<$Res> {
  factory _$$_InteractionStateCopyWith(
          _$_InteractionState value, $Res Function(_$_InteractionState) then) =
      __$$_InteractionStateCopyWithImpl<$Res>;
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
class __$$_InteractionStateCopyWithImpl<$Res>
    extends _$InteractionStateCopyWithImpl<$Res, _$_InteractionState>
    implements _$$_InteractionStateCopyWith<$Res> {
  __$$_InteractionStateCopyWithImpl(
      _$_InteractionState _value, $Res Function(_$_InteractionState) _then)
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
    return _then(_$_InteractionState(
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

class _$_InteractionState extends _InteractionState {
  const _$_InteractionState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InteractionState &&
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
  _$$_InteractionStateCopyWith<_$_InteractionState> get copyWith =>
      __$$_InteractionStateCopyWithImpl<_$_InteractionState>(this, _$identity);
}

abstract class _InteractionState extends InteractionState {
  const factory _InteractionState(
      {final PageCommand? pageCommand,
      final PageState pageState,
      final bool isLoading,
      final Contact? contact,
      final File? avatar}) = _$_InteractionState;
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
  _$$_InteractionStateCopyWith<_$_InteractionState> get copyWith =>
      throw _privateConstructorUsedError;
}
