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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function() onLoginLater,
    required TResult Function(SocialType type) onSignInWithSocial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? onLoginLater,
    TResult? Function(SocialType type)? onSignInWithSocial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? onLoginLater,
    TResult Function(SocialType type)? onSignInWithSocial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnLoginLater value) onLoginLater,
    required TResult Function(_OnSignInWithSocial value) onSignInWithSocial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnLoginLater value)? onLoginLater,
    TResult? Function(_OnSignInWithSocial value)? onSignInWithSocial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnLoginLater value)? onLoginLater,
    TResult Function(_OnSignInWithSocial value)? onSignInWithSocial,
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OnboardingEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function() onLoginLater,
    required TResult Function(SocialType type) onSignInWithSocial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? onLoginLater,
    TResult? Function(SocialType type)? onSignInWithSocial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? onLoginLater,
    TResult Function(SocialType type)? onSignInWithSocial,
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
    required TResult Function(_OnLoginLater value) onLoginLater,
    required TResult Function(_OnSignInWithSocial value) onSignInWithSocial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnLoginLater value)? onLoginLater,
    TResult? Function(_OnSignInWithSocial value)? onSignInWithSocial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnLoginLater value)? onLoginLater,
    TResult Function(_OnSignInWithSocial value)? onSignInWithSocial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OnboardingEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ClearPageCommandImplCopyWith<$Res> {
  factory _$$ClearPageCommandImplCopyWith(_$ClearPageCommandImpl value,
          $Res Function(_$ClearPageCommandImpl) then) =
      __$$ClearPageCommandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPageCommandImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
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
    return 'OnboardingEvent.clearPageCommand()';
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
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function() onLoginLater,
    required TResult Function(SocialType type) onSignInWithSocial,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? onLoginLater,
    TResult? Function(SocialType type)? onSignInWithSocial,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? onLoginLater,
    TResult Function(SocialType type)? onSignInWithSocial,
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
    required TResult Function(_OnLoginLater value) onLoginLater,
    required TResult Function(_OnSignInWithSocial value) onSignInWithSocial,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnLoginLater value)? onLoginLater,
    TResult? Function(_OnSignInWithSocial value)? onSignInWithSocial,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnLoginLater value)? onLoginLater,
    TResult Function(_OnSignInWithSocial value)? onSignInWithSocial,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements OnboardingEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
abstract class _$$OnLoginLaterImplCopyWith<$Res> {
  factory _$$OnLoginLaterImplCopyWith(
          _$OnLoginLaterImpl value, $Res Function(_$OnLoginLaterImpl) then) =
      __$$OnLoginLaterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLoginLaterImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$OnLoginLaterImpl>
    implements _$$OnLoginLaterImplCopyWith<$Res> {
  __$$OnLoginLaterImplCopyWithImpl(
      _$OnLoginLaterImpl _value, $Res Function(_$OnLoginLaterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnLoginLaterImpl implements _OnLoginLater {
  const _$OnLoginLaterImpl();

  @override
  String toString() {
    return 'OnboardingEvent.onLoginLater()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLoginLaterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function() onLoginLater,
    required TResult Function(SocialType type) onSignInWithSocial,
  }) {
    return onLoginLater();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? onLoginLater,
    TResult? Function(SocialType type)? onSignInWithSocial,
  }) {
    return onLoginLater?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? onLoginLater,
    TResult Function(SocialType type)? onSignInWithSocial,
    required TResult orElse(),
  }) {
    if (onLoginLater != null) {
      return onLoginLater();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnLoginLater value) onLoginLater,
    required TResult Function(_OnSignInWithSocial value) onSignInWithSocial,
  }) {
    return onLoginLater(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnLoginLater value)? onLoginLater,
    TResult? Function(_OnSignInWithSocial value)? onSignInWithSocial,
  }) {
    return onLoginLater?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnLoginLater value)? onLoginLater,
    TResult Function(_OnSignInWithSocial value)? onSignInWithSocial,
    required TResult orElse(),
  }) {
    if (onLoginLater != null) {
      return onLoginLater(this);
    }
    return orElse();
  }
}

abstract class _OnLoginLater implements OnboardingEvent {
  const factory _OnLoginLater() = _$OnLoginLaterImpl;
}

/// @nodoc
abstract class _$$OnSignInWithSocialImplCopyWith<$Res> {
  factory _$$OnSignInWithSocialImplCopyWith(_$OnSignInWithSocialImpl value,
          $Res Function(_$OnSignInWithSocialImpl) then) =
      __$$OnSignInWithSocialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SocialType type});
}

/// @nodoc
class __$$OnSignInWithSocialImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$OnSignInWithSocialImpl>
    implements _$$OnSignInWithSocialImplCopyWith<$Res> {
  __$$OnSignInWithSocialImplCopyWithImpl(_$OnSignInWithSocialImpl _value,
      $Res Function(_$OnSignInWithSocialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$OnSignInWithSocialImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SocialType,
    ));
  }
}

/// @nodoc

class _$OnSignInWithSocialImpl implements _OnSignInWithSocial {
  const _$OnSignInWithSocialImpl(this.type);

  @override
  final SocialType type;

  @override
  String toString() {
    return 'OnboardingEvent.onSignInWithSocial(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSignInWithSocialImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSignInWithSocialImplCopyWith<_$OnSignInWithSocialImpl> get copyWith =>
      __$$OnSignInWithSocialImplCopyWithImpl<_$OnSignInWithSocialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function() onLoginLater,
    required TResult Function(SocialType type) onSignInWithSocial,
  }) {
    return onSignInWithSocial(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? onLoginLater,
    TResult? Function(SocialType type)? onSignInWithSocial,
  }) {
    return onSignInWithSocial?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? onLoginLater,
    TResult Function(SocialType type)? onSignInWithSocial,
    required TResult orElse(),
  }) {
    if (onSignInWithSocial != null) {
      return onSignInWithSocial(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnLoginLater value) onLoginLater,
    required TResult Function(_OnSignInWithSocial value) onSignInWithSocial,
  }) {
    return onSignInWithSocial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnLoginLater value)? onLoginLater,
    TResult? Function(_OnSignInWithSocial value)? onSignInWithSocial,
  }) {
    return onSignInWithSocial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnLoginLater value)? onLoginLater,
    TResult Function(_OnSignInWithSocial value)? onSignInWithSocial,
    required TResult orElse(),
  }) {
    if (onSignInWithSocial != null) {
      return onSignInWithSocial(this);
    }
    return orElse();
  }
}

abstract class _OnSignInWithSocial implements OnboardingEvent {
  const factory _OnSignInWithSocial(final SocialType type) =
      _$OnSignInWithSocialImpl;

  SocialType get type;
  @JsonKey(ignore: true)
  _$$OnSignInWithSocialImplCopyWith<_$OnSignInWithSocialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OnboardingState {
  PageState get pageStatus => throw _privateConstructorUsedError;
  PageCommand? get pageCommand => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
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
abstract class _$$OnboardingStateImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$OnboardingStateImplCopyWith(_$OnboardingStateImpl value,
          $Res Function(_$OnboardingStateImpl) then) =
      __$$OnboardingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageStatus,
      PageCommand? pageCommand,
      bool isLoading,
      LoggedInData loggedInData});

  @override
  $PageCommandCopyWith<$Res>? get pageCommand;
  @override
  $LoggedInDataCopyWith<$Res> get loggedInData;
}

/// @nodoc
class __$$OnboardingStateImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$OnboardingStateImpl>
    implements _$$OnboardingStateImplCopyWith<$Res> {
  __$$OnboardingStateImplCopyWithImpl(
      _$OnboardingStateImpl _value, $Res Function(_$OnboardingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageStatus = null,
    Object? pageCommand = freezed,
    Object? isLoading = null,
    Object? loggedInData = null,
  }) {
    return _then(_$OnboardingStateImpl(
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
      loggedInData: null == loggedInData
          ? _value.loggedInData
          : loggedInData // ignore: cast_nullable_to_non_nullable
              as LoggedInData,
    ));
  }
}

/// @nodoc

class _$OnboardingStateImpl extends _OnboardingState {
  const _$OnboardingStateImpl(
      {this.pageStatus = PageState.initial,
      this.pageCommand,
      this.isLoading = false,
      this.loggedInData = const LoggedInData()})
      : super._();

  @override
  @JsonKey()
  final PageState pageStatus;
  @override
  final PageCommand? pageCommand;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final LoggedInData loggedInData;

  @override
  String toString() {
    return 'OnboardingState(pageStatus: $pageStatus, pageCommand: $pageCommand, isLoading: $isLoading, loggedInData: $loggedInData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingStateImpl &&
            (identical(other.pageStatus, pageStatus) ||
                other.pageStatus == pageStatus) &&
            (identical(other.pageCommand, pageCommand) ||
                other.pageCommand == pageCommand) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loggedInData, loggedInData) ||
                other.loggedInData == loggedInData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pageStatus, pageCommand, isLoading, loggedInData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingStateImplCopyWith<_$OnboardingStateImpl> get copyWith =>
      __$$OnboardingStateImplCopyWithImpl<_$OnboardingStateImpl>(
          this, _$identity);
}

abstract class _OnboardingState extends OnboardingState {
  const factory _OnboardingState(
      {final PageState pageStatus,
      final PageCommand? pageCommand,
      final bool isLoading,
      final LoggedInData loggedInData}) = _$OnboardingStateImpl;
  const _OnboardingState._() : super._();

  @override
  PageState get pageStatus;
  @override
  PageCommand? get pageCommand;
  @override
  bool get isLoading;
  @override
  LoggedInData get loggedInData;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingStateImplCopyWith<_$OnboardingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
