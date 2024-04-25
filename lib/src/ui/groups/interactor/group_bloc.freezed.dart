// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupEventCopyWith<$Res> {
  factory $GroupEventCopyWith(
          GroupEvent value, $Res Function(GroupEvent) then) =
      _$GroupEventCopyWithImpl<$Res, GroupEvent>;
}

/// @nodoc
class _$GroupEventCopyWithImpl<$Res, $Val extends GroupEvent>
    implements $GroupEventCopyWith<$Res> {
  _$GroupEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GroupEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GroupEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ClearPageCommandCopyWith<$Res> {
  factory _$$_ClearPageCommandCopyWith(
          _$_ClearPageCommand value, $Res Function(_$_ClearPageCommand) then) =
      __$$_ClearPageCommandCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearPageCommandCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$_ClearPageCommand>
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
    return 'GroupEvent.clearPageCommand()';
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
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
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
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements GroupEvent {
  const factory _ClearPageCommand() = _$_ClearPageCommand;
}

/// @nodoc
mixin _$GroupState {
  PageCommand? get pageCommand => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupStateCopyWith<GroupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupStateCopyWith<$Res> {
  factory $GroupStateCopyWith(
          GroupState value, $Res Function(GroupState) then) =
      _$GroupStateCopyWithImpl<$Res, GroupState>;
  @useResult
  $Res call({PageCommand? pageCommand});

  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class _$GroupStateCopyWithImpl<$Res, $Val extends GroupState>
    implements $GroupStateCopyWith<$Res> {
  _$GroupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageCommand = freezed,
  }) {
    return _then(_value.copyWith(
      pageCommand: freezed == pageCommand
          ? _value.pageCommand
          : pageCommand // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
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
abstract class _$$_GroupStateCopyWith<$Res>
    implements $GroupStateCopyWith<$Res> {
  factory _$$_GroupStateCopyWith(
          _$_GroupState value, $Res Function(_$_GroupState) then) =
      __$$_GroupStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageCommand? pageCommand});

  @override
  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class __$$_GroupStateCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$_GroupState>
    implements _$$_GroupStateCopyWith<$Res> {
  __$$_GroupStateCopyWithImpl(
      _$_GroupState _value, $Res Function(_$_GroupState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageCommand = freezed,
  }) {
    return _then(_$_GroupState(
      pageCommand: freezed == pageCommand
          ? _value.pageCommand
          : pageCommand // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ));
  }
}

/// @nodoc

class _$_GroupState extends _GroupState {
  const _$_GroupState({this.pageCommand}) : super._();

  @override
  final PageCommand? pageCommand;

  @override
  String toString() {
    return 'GroupState(pageCommand: $pageCommand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupState &&
            (identical(other.pageCommand, pageCommand) ||
                other.pageCommand == pageCommand));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageCommand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupStateCopyWith<_$_GroupState> get copyWith =>
      __$$_GroupStateCopyWithImpl<_$_GroupState>(this, _$identity);
}

abstract class _GroupState extends GroupState {
  const factory _GroupState({final PageCommand? pageCommand}) = _$_GroupState;
  const _GroupState._() : super._();

  @override
  PageCommand? get pageCommand;
  @override
  @JsonKey(ignore: true)
  _$$_GroupStateCopyWith<_$_GroupState> get copyWith =>
      throw _privateConstructorUsedError;
}
