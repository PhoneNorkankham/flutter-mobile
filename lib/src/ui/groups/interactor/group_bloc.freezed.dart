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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(Group group) onGotoGroupDetails,
    required TResult Function(Group group) onKeepUpGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(Group group)? onGotoGroupDetails,
    TResult? Function(Group group)? onKeepUpGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(Group group)? onGotoGroupDetails,
    TResult Function(Group group)? onKeepUpGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedKeyword value) onChangedKeyword,
    required TResult Function(_OnGotoGroupDetails value) onGotoGroupDetails,
    required TResult Function(_OnKeepUpGroup value) onKeepUpGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnGotoGroupDetails value)? onGotoGroupDetails,
    TResult? Function(_OnKeepUpGroup value)? onKeepUpGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnGotoGroupDetails value)? onGotoGroupDetails,
    TResult Function(_OnKeepUpGroup value)? onKeepUpGroup,
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$InitialImpl>
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
    return 'GroupEvent.initial()';
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
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(Group group) onGotoGroupDetails,
    required TResult Function(Group group) onKeepUpGroup,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(Group group)? onGotoGroupDetails,
    TResult? Function(Group group)? onKeepUpGroup,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(Group group)? onGotoGroupDetails,
    TResult Function(Group group)? onKeepUpGroup,
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
    required TResult Function(_OnChangedKeyword value) onChangedKeyword,
    required TResult Function(_OnGotoGroupDetails value) onGotoGroupDetails,
    required TResult Function(_OnKeepUpGroup value) onKeepUpGroup,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnGotoGroupDetails value)? onGotoGroupDetails,
    TResult? Function(_OnKeepUpGroup value)? onKeepUpGroup,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnGotoGroupDetails value)? onGotoGroupDetails,
    TResult Function(_OnKeepUpGroup value)? onKeepUpGroup,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GroupEvent {
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
    extends _$GroupEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
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
    return 'GroupEvent.clearPageCommand()';
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
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(Group group) onGotoGroupDetails,
    required TResult Function(Group group) onKeepUpGroup,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(Group group)? onGotoGroupDetails,
    TResult? Function(Group group)? onKeepUpGroup,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(Group group)? onGotoGroupDetails,
    TResult Function(Group group)? onKeepUpGroup,
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
    required TResult Function(_OnChangedKeyword value) onChangedKeyword,
    required TResult Function(_OnGotoGroupDetails value) onGotoGroupDetails,
    required TResult Function(_OnKeepUpGroup value) onKeepUpGroup,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnGotoGroupDetails value)? onGotoGroupDetails,
    TResult? Function(_OnKeepUpGroup value)? onKeepUpGroup,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnGotoGroupDetails value)? onGotoGroupDetails,
    TResult Function(_OnKeepUpGroup value)? onKeepUpGroup,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements GroupEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
abstract class _$$OnChangedKeywordImplCopyWith<$Res> {
  factory _$$OnChangedKeywordImplCopyWith(_$OnChangedKeywordImpl value,
          $Res Function(_$OnChangedKeywordImpl) then) =
      __$$OnChangedKeywordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class __$$OnChangedKeywordImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$OnChangedKeywordImpl>
    implements _$$OnChangedKeywordImplCopyWith<$Res> {
  __$$OnChangedKeywordImplCopyWithImpl(_$OnChangedKeywordImpl _value,
      $Res Function(_$OnChangedKeywordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$OnChangedKeywordImpl(
      null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnChangedKeywordImpl implements _OnChangedKeyword {
  const _$OnChangedKeywordImpl(this.keyword);

  @override
  final String keyword;

  @override
  String toString() {
    return 'GroupEvent.onChangedKeyword(keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangedKeywordImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangedKeywordImplCopyWith<_$OnChangedKeywordImpl> get copyWith =>
      __$$OnChangedKeywordImplCopyWithImpl<_$OnChangedKeywordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(Group group) onGotoGroupDetails,
    required TResult Function(Group group) onKeepUpGroup,
  }) {
    return onChangedKeyword(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(Group group)? onGotoGroupDetails,
    TResult? Function(Group group)? onKeepUpGroup,
  }) {
    return onChangedKeyword?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(Group group)? onGotoGroupDetails,
    TResult Function(Group group)? onKeepUpGroup,
    required TResult orElse(),
  }) {
    if (onChangedKeyword != null) {
      return onChangedKeyword(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedKeyword value) onChangedKeyword,
    required TResult Function(_OnGotoGroupDetails value) onGotoGroupDetails,
    required TResult Function(_OnKeepUpGroup value) onKeepUpGroup,
  }) {
    return onChangedKeyword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnGotoGroupDetails value)? onGotoGroupDetails,
    TResult? Function(_OnKeepUpGroup value)? onKeepUpGroup,
  }) {
    return onChangedKeyword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnGotoGroupDetails value)? onGotoGroupDetails,
    TResult Function(_OnKeepUpGroup value)? onKeepUpGroup,
    required TResult orElse(),
  }) {
    if (onChangedKeyword != null) {
      return onChangedKeyword(this);
    }
    return orElse();
  }
}

abstract class _OnChangedKeyword implements GroupEvent {
  const factory _OnChangedKeyword(final String keyword) =
      _$OnChangedKeywordImpl;

  String get keyword;
  @JsonKey(ignore: true)
  _$$OnChangedKeywordImplCopyWith<_$OnChangedKeywordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnGotoGroupDetailsImplCopyWith<$Res> {
  factory _$$OnGotoGroupDetailsImplCopyWith(_$OnGotoGroupDetailsImpl value,
          $Res Function(_$OnGotoGroupDetailsImpl) then) =
      __$$OnGotoGroupDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Group group});
}

/// @nodoc
class __$$OnGotoGroupDetailsImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$OnGotoGroupDetailsImpl>
    implements _$$OnGotoGroupDetailsImplCopyWith<$Res> {
  __$$OnGotoGroupDetailsImplCopyWithImpl(_$OnGotoGroupDetailsImpl _value,
      $Res Function(_$OnGotoGroupDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = freezed,
  }) {
    return _then(_$OnGotoGroupDetailsImpl(
      freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
    ));
  }
}

/// @nodoc

class _$OnGotoGroupDetailsImpl implements _OnGotoGroupDetails {
  const _$OnGotoGroupDetailsImpl(this.group);

  @override
  final Group group;

  @override
  String toString() {
    return 'GroupEvent.onGotoGroupDetails(group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGotoGroupDetailsImpl &&
            const DeepCollectionEquality().equals(other.group, group));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(group));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGotoGroupDetailsImplCopyWith<_$OnGotoGroupDetailsImpl> get copyWith =>
      __$$OnGotoGroupDetailsImplCopyWithImpl<_$OnGotoGroupDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(Group group) onGotoGroupDetails,
    required TResult Function(Group group) onKeepUpGroup,
  }) {
    return onGotoGroupDetails(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(Group group)? onGotoGroupDetails,
    TResult? Function(Group group)? onKeepUpGroup,
  }) {
    return onGotoGroupDetails?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(Group group)? onGotoGroupDetails,
    TResult Function(Group group)? onKeepUpGroup,
    required TResult orElse(),
  }) {
    if (onGotoGroupDetails != null) {
      return onGotoGroupDetails(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedKeyword value) onChangedKeyword,
    required TResult Function(_OnGotoGroupDetails value) onGotoGroupDetails,
    required TResult Function(_OnKeepUpGroup value) onKeepUpGroup,
  }) {
    return onGotoGroupDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnGotoGroupDetails value)? onGotoGroupDetails,
    TResult? Function(_OnKeepUpGroup value)? onKeepUpGroup,
  }) {
    return onGotoGroupDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnGotoGroupDetails value)? onGotoGroupDetails,
    TResult Function(_OnKeepUpGroup value)? onKeepUpGroup,
    required TResult orElse(),
  }) {
    if (onGotoGroupDetails != null) {
      return onGotoGroupDetails(this);
    }
    return orElse();
  }
}

abstract class _OnGotoGroupDetails implements GroupEvent {
  const factory _OnGotoGroupDetails(final Group group) =
      _$OnGotoGroupDetailsImpl;

  Group get group;
  @JsonKey(ignore: true)
  _$$OnGotoGroupDetailsImplCopyWith<_$OnGotoGroupDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnKeepUpGroupImplCopyWith<$Res> {
  factory _$$OnKeepUpGroupImplCopyWith(
          _$OnKeepUpGroupImpl value, $Res Function(_$OnKeepUpGroupImpl) then) =
      __$$OnKeepUpGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Group group});
}

/// @nodoc
class __$$OnKeepUpGroupImplCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res, _$OnKeepUpGroupImpl>
    implements _$$OnKeepUpGroupImplCopyWith<$Res> {
  __$$OnKeepUpGroupImplCopyWithImpl(
      _$OnKeepUpGroupImpl _value, $Res Function(_$OnKeepUpGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = freezed,
  }) {
    return _then(_$OnKeepUpGroupImpl(
      freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
    ));
  }
}

/// @nodoc

class _$OnKeepUpGroupImpl implements _OnKeepUpGroup {
  const _$OnKeepUpGroupImpl(this.group);

  @override
  final Group group;

  @override
  String toString() {
    return 'GroupEvent.onKeepUpGroup(group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnKeepUpGroupImpl &&
            const DeepCollectionEquality().equals(other.group, group));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(group));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnKeepUpGroupImplCopyWith<_$OnKeepUpGroupImpl> get copyWith =>
      __$$OnKeepUpGroupImplCopyWithImpl<_$OnKeepUpGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(Group group) onGotoGroupDetails,
    required TResult Function(Group group) onKeepUpGroup,
  }) {
    return onKeepUpGroup(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(Group group)? onGotoGroupDetails,
    TResult? Function(Group group)? onKeepUpGroup,
  }) {
    return onKeepUpGroup?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(Group group)? onGotoGroupDetails,
    TResult Function(Group group)? onKeepUpGroup,
    required TResult orElse(),
  }) {
    if (onKeepUpGroup != null) {
      return onKeepUpGroup(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedKeyword value) onChangedKeyword,
    required TResult Function(_OnGotoGroupDetails value) onGotoGroupDetails,
    required TResult Function(_OnKeepUpGroup value) onKeepUpGroup,
  }) {
    return onKeepUpGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnGotoGroupDetails value)? onGotoGroupDetails,
    TResult? Function(_OnKeepUpGroup value)? onKeepUpGroup,
  }) {
    return onKeepUpGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnGotoGroupDetails value)? onGotoGroupDetails,
    TResult Function(_OnKeepUpGroup value)? onKeepUpGroup,
    required TResult orElse(),
  }) {
    if (onKeepUpGroup != null) {
      return onKeepUpGroup(this);
    }
    return orElse();
  }
}

abstract class _OnKeepUpGroup implements GroupEvent {
  const factory _OnKeepUpGroup(final Group group) = _$OnKeepUpGroupImpl;

  Group get group;
  @JsonKey(ignore: true)
  _$$OnKeepUpGroupImplCopyWith<_$OnKeepUpGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupState {
  PageCommand? get pageCommand => throw _privateConstructorUsedError;
  PageState get pageState => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;
  List<Group> get groups => throw _privateConstructorUsedError;

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
  $Res call(
      {PageCommand? pageCommand,
      PageState pageState,
      bool isLoading,
      String keyword,
      List<Group> groups});

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
    Object? pageState = null,
    Object? isLoading = null,
    Object? keyword = null,
    Object? groups = null,
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
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
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
abstract class _$$GroupStateImplCopyWith<$Res>
    implements $GroupStateCopyWith<$Res> {
  factory _$$GroupStateImplCopyWith(
          _$GroupStateImpl value, $Res Function(_$GroupStateImpl) then) =
      __$$GroupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageCommand? pageCommand,
      PageState pageState,
      bool isLoading,
      String keyword,
      List<Group> groups});

  @override
  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class __$$GroupStateImplCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$GroupStateImpl>
    implements _$$GroupStateImplCopyWith<$Res> {
  __$$GroupStateImplCopyWithImpl(
      _$GroupStateImpl _value, $Res Function(_$GroupStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageCommand = freezed,
    Object? pageState = null,
    Object? isLoading = null,
    Object? keyword = null,
    Object? groups = null,
  }) {
    return _then(_$GroupStateImpl(
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
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc

class _$GroupStateImpl extends _GroupState {
  const _$GroupStateImpl(
      {this.pageCommand,
      this.pageState = PageState.loading,
      this.isLoading = false,
      this.keyword = '',
      final List<Group> groups = const []})
      : _groups = groups,
        super._();

  @override
  final PageCommand? pageCommand;
  @override
  @JsonKey()
  final PageState pageState;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String keyword;
  final List<Group> _groups;
  @override
  @JsonKey()
  List<Group> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'GroupState(pageCommand: $pageCommand, pageState: $pageState, isLoading: $isLoading, keyword: $keyword, groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupStateImpl &&
            (identical(other.pageCommand, pageCommand) ||
                other.pageCommand == pageCommand) &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageCommand, pageState,
      isLoading, keyword, const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupStateImplCopyWith<_$GroupStateImpl> get copyWith =>
      __$$GroupStateImplCopyWithImpl<_$GroupStateImpl>(this, _$identity);
}

abstract class _GroupState extends GroupState {
  const factory _GroupState(
      {final PageCommand? pageCommand,
      final PageState pageState,
      final bool isLoading,
      final String keyword,
      final List<Group> groups}) = _$GroupStateImpl;
  const _GroupState._() : super._();

  @override
  PageCommand? get pageCommand;
  @override
  PageState get pageState;
  @override
  bool get isLoading;
  @override
  String get keyword;
  @override
  List<Group> get groups;
  @override
  @JsonKey(ignore: true)
  _$$GroupStateImplCopyWith<_$GroupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
