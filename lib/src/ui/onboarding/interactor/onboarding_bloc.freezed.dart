// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function() gotoMain,
    required TResult Function(GroupRequest group) onJoinGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? gotoMain,
    TResult? Function(GroupRequest group)? onJoinGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? gotoMain,
    TResult Function(GroupRequest group)? onJoinGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_GotoMain value) gotoMain,
    required TResult Function(_OnJoinGroup value) onJoinGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_GotoMain value)? gotoMain,
    TResult? Function(_OnJoinGroup value)? onJoinGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_GotoMain value)? gotoMain,
    TResult Function(_OnJoinGroup value)? onJoinGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingEventCopyWith<$Res> {
  factory $OnboardingEventCopyWith(
          OnboardingEvent value, $Res Function(OnboardingEvent) then) =
      _$OnboardingEventCopyWithImpl<$Res, OnboardingEvent>;
}

/// @nodoc
class _$OnboardingEventCopyWithImpl<$Res, $Val extends OnboardingEvent>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

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
    extends _$OnboardingEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OnboardingEvent.initial()';
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
    required TResult Function() gotoMain,
    required TResult Function(GroupRequest group) onJoinGroup,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? gotoMain,
    TResult? Function(GroupRequest group)? onJoinGroup,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? gotoMain,
    TResult Function(GroupRequest group)? onJoinGroup,
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
    required TResult Function(_GotoMain value) gotoMain,
    required TResult Function(_OnJoinGroup value) onJoinGroup,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_GotoMain value)? gotoMain,
    TResult? Function(_OnJoinGroup value)? onJoinGroup,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_GotoMain value)? gotoMain,
    TResult Function(_OnJoinGroup value)? onJoinGroup,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OnboardingEvent {
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
    extends _$OnboardingEventCopyWithImpl<$Res, _$_ClearPageCommand>
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
    return 'OnboardingEvent.clearPageCommand()';
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
    required TResult Function() gotoMain,
    required TResult Function(GroupRequest group) onJoinGroup,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? gotoMain,
    TResult? Function(GroupRequest group)? onJoinGroup,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? gotoMain,
    TResult Function(GroupRequest group)? onJoinGroup,
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
    required TResult Function(_GotoMain value) gotoMain,
    required TResult Function(_OnJoinGroup value) onJoinGroup,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_GotoMain value)? gotoMain,
    TResult? Function(_OnJoinGroup value)? onJoinGroup,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_GotoMain value)? gotoMain,
    TResult Function(_OnJoinGroup value)? onJoinGroup,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements OnboardingEvent {
  const factory _ClearPageCommand() = _$_ClearPageCommand;
}

/// @nodoc
abstract class _$$_GotoMainCopyWith<$Res> {
  factory _$$_GotoMainCopyWith(
          _$_GotoMain value, $Res Function(_$_GotoMain) then) =
      __$$_GotoMainCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GotoMainCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_GotoMain>
    implements _$$_GotoMainCopyWith<$Res> {
  __$$_GotoMainCopyWithImpl(
      _$_GotoMain _value, $Res Function(_$_GotoMain) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GotoMain implements _GotoMain {
  const _$_GotoMain();

  @override
  String toString() {
    return 'OnboardingEvent.gotoMain()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GotoMain);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function() gotoMain,
    required TResult Function(GroupRequest group) onJoinGroup,
  }) {
    return gotoMain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? gotoMain,
    TResult? Function(GroupRequest group)? onJoinGroup,
  }) {
    return gotoMain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? gotoMain,
    TResult Function(GroupRequest group)? onJoinGroup,
    required TResult orElse(),
  }) {
    if (gotoMain != null) {
      return gotoMain();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_GotoMain value) gotoMain,
    required TResult Function(_OnJoinGroup value) onJoinGroup,
  }) {
    return gotoMain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_GotoMain value)? gotoMain,
    TResult? Function(_OnJoinGroup value)? onJoinGroup,
  }) {
    return gotoMain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_GotoMain value)? gotoMain,
    TResult Function(_OnJoinGroup value)? onJoinGroup,
    required TResult orElse(),
  }) {
    if (gotoMain != null) {
      return gotoMain(this);
    }
    return orElse();
  }
}

abstract class _GotoMain implements OnboardingEvent {
  const factory _GotoMain() = _$_GotoMain;
}

/// @nodoc
abstract class _$$_OnJoinGroupCopyWith<$Res> {
  factory _$$_OnJoinGroupCopyWith(
          _$_OnJoinGroup value, $Res Function(_$_OnJoinGroup) then) =
      __$$_OnJoinGroupCopyWithImpl<$Res>;
  @useResult
  $Res call({GroupRequest group});

  $GroupRequestCopyWith<$Res> get group;
}

/// @nodoc
class __$$_OnJoinGroupCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_OnJoinGroup>
    implements _$$_OnJoinGroupCopyWith<$Res> {
  __$$_OnJoinGroupCopyWithImpl(
      _$_OnJoinGroup _value, $Res Function(_$_OnJoinGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_$_OnJoinGroup(
      null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupRequestCopyWith<$Res> get group {
    return $GroupRequestCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc

class _$_OnJoinGroup implements _OnJoinGroup {
  const _$_OnJoinGroup(this.group);

  @override
  final GroupRequest group;

  @override
  String toString() {
    return 'OnboardingEvent.onJoinGroup(group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnJoinGroup &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnJoinGroupCopyWith<_$_OnJoinGroup> get copyWith =>
      __$$_OnJoinGroupCopyWithImpl<_$_OnJoinGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function() gotoMain,
    required TResult Function(GroupRequest group) onJoinGroup,
  }) {
    return onJoinGroup(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? gotoMain,
    TResult? Function(GroupRequest group)? onJoinGroup,
  }) {
    return onJoinGroup?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? gotoMain,
    TResult Function(GroupRequest group)? onJoinGroup,
    required TResult orElse(),
  }) {
    if (onJoinGroup != null) {
      return onJoinGroup(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_GotoMain value) gotoMain,
    required TResult Function(_OnJoinGroup value) onJoinGroup,
  }) {
    return onJoinGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_GotoMain value)? gotoMain,
    TResult? Function(_OnJoinGroup value)? onJoinGroup,
  }) {
    return onJoinGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_GotoMain value)? gotoMain,
    TResult Function(_OnJoinGroup value)? onJoinGroup,
    required TResult orElse(),
  }) {
    if (onJoinGroup != null) {
      return onJoinGroup(this);
    }
    return orElse();
  }
}

abstract class _OnJoinGroup implements OnboardingEvent {
  const factory _OnJoinGroup(final GroupRequest group) = _$_OnJoinGroup;

  GroupRequest get group;
  @JsonKey(ignore: true)
  _$$_OnJoinGroupCopyWith<_$_OnJoinGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SplashPageCommand {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowDialog value) showDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowDialog value)? showDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowDialog value)? showDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashPageCommandCopyWith<SplashPageCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashPageCommandCopyWith<$Res> {
  factory $SplashPageCommandCopyWith(
          SplashPageCommand value, $Res Function(SplashPageCommand) then) =
      _$SplashPageCommandCopyWithImpl<$Res, SplashPageCommand>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SplashPageCommandCopyWithImpl<$Res, $Val extends SplashPageCommand>
    implements $SplashPageCommandCopyWith<$Res> {
  _$SplashPageCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShowDialogCopyWith<$Res>
    implements $SplashPageCommandCopyWith<$Res> {
  factory _$$_ShowDialogCopyWith(
          _$_ShowDialog value, $Res Function(_$_ShowDialog) then) =
      __$$_ShowDialogCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ShowDialogCopyWithImpl<$Res>
    extends _$SplashPageCommandCopyWithImpl<$Res, _$_ShowDialog>
    implements _$$_ShowDialogCopyWith<$Res> {
  __$$_ShowDialogCopyWithImpl(
      _$_ShowDialog _value, $Res Function(_$_ShowDialog) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ShowDialog(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowDialog implements _ShowDialog {
  _$_ShowDialog(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SplashPageCommand.showDialog(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowDialog &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowDialogCopyWith<_$_ShowDialog> get copyWith =>
      __$$_ShowDialogCopyWithImpl<_$_ShowDialog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showDialog,
  }) {
    return showDialog(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showDialog,
  }) {
    return showDialog?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showDialog,
    required TResult orElse(),
  }) {
    if (showDialog != null) {
      return showDialog(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowDialog value) showDialog,
  }) {
    return showDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowDialog value)? showDialog,
  }) {
    return showDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowDialog value)? showDialog,
    required TResult orElse(),
  }) {
    if (showDialog != null) {
      return showDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowDialog implements SplashPageCommand {
  factory _ShowDialog(final String message) = _$_ShowDialog;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ShowDialogCopyWith<_$_ShowDialog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OnboardingState {
  PageState get pageStatus => throw _privateConstructorUsedError;
  PageCommand? get pageCommand => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<GroupRequest> get groups => throw _privateConstructorUsedError;
  LoggedInData get loggedInData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res, OnboardingState>;
  @useResult
  $Res call(
      {PageState pageStatus,
      PageCommand? pageCommand,
      bool isLoading,
      List<GroupRequest> groups,
      LoggedInData loggedInData});

  $PageCommandCopyWith<$Res>? get pageCommand;
  $LoggedInDataCopyWith<$Res> get loggedInData;
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res, $Val extends OnboardingState>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageStatus = null,
    Object? pageCommand = freezed,
    Object? isLoading = null,
    Object? groups = null,
    Object? loggedInData = null,
  }) {
    return _then(_value.copyWith(
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
      pageCommand: freezed == pageCommand
          ? _value.pageCommand
          : pageCommand // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupRequest>,
      loggedInData: null == loggedInData
          ? _value.loggedInData
          : loggedInData // ignore: cast_nullable_to_non_nullable
              as LoggedInData,
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

  @override
  @pragma('vm:prefer-inline')
  $LoggedInDataCopyWith<$Res> get loggedInData {
    return $LoggedInDataCopyWith<$Res>(_value.loggedInData, (value) {
      return _then(_value.copyWith(loggedInData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OnboardingStateCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$_OnboardingStateCopyWith(
          _$_OnboardingState value, $Res Function(_$_OnboardingState) then) =
      __$$_OnboardingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageStatus,
      PageCommand? pageCommand,
      bool isLoading,
      List<GroupRequest> groups,
      LoggedInData loggedInData});

  @override
  $PageCommandCopyWith<$Res>? get pageCommand;
  @override
  $LoggedInDataCopyWith<$Res> get loggedInData;
}

/// @nodoc
class __$$_OnboardingStateCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$_OnboardingState>
    implements _$$_OnboardingStateCopyWith<$Res> {
  __$$_OnboardingStateCopyWithImpl(
      _$_OnboardingState _value, $Res Function(_$_OnboardingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageStatus = null,
    Object? pageCommand = freezed,
    Object? isLoading = null,
    Object? groups = null,
    Object? loggedInData = null,
  }) {
    return _then(_$_OnboardingState(
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
      pageCommand: freezed == pageCommand
          ? _value.pageCommand
          : pageCommand // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupRequest>,
      loggedInData: null == loggedInData
          ? _value.loggedInData
          : loggedInData // ignore: cast_nullable_to_non_nullable
              as LoggedInData,
    ));
  }
}

/// @nodoc

class _$_OnboardingState extends _OnboardingState {
  const _$_OnboardingState(
      {this.pageStatus = PageState.initial,
      this.pageCommand,
      this.isLoading = false,
      final List<GroupRequest> groups = const [],
      this.loggedInData = const LoggedInData()})
      : _groups = groups,
        super._();

  @override
  @JsonKey()
  final PageState pageStatus;
  @override
  final PageCommand? pageCommand;
  @override
  @JsonKey()
  final bool isLoading;
  final List<GroupRequest> _groups;
  @override
  @JsonKey()
  List<GroupRequest> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  @JsonKey()
  final LoggedInData loggedInData;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardingStateCopyWith<_$_OnboardingState> get copyWith =>
      __$$_OnboardingStateCopyWithImpl<_$_OnboardingState>(this, _$identity);
}

abstract class _OnboardingState extends OnboardingState {
  const factory _OnboardingState(
      {final PageState pageStatus,
      final PageCommand? pageCommand,
      final bool isLoading,
      final List<GroupRequest> groups,
      final LoggedInData loggedInData}) = _$_OnboardingState;
  const _OnboardingState._() : super._();

  @override
  PageState get pageStatus;
  @override
  PageCommand? get pageCommand;
  @override
  bool get isLoading;
  @override
  List<GroupRequest> get groups;
  @override
  LoggedInData get loggedInData;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingStateCopyWith<_$_OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}
