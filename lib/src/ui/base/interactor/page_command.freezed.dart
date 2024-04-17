// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageCommand {}

/// @nodoc
abstract class $PageCommandCopyWith<$Res> {
  factory $PageCommandCopyWith(
          PageCommand value, $Res Function(PageCommand) then) =
      _$PageCommandCopyWithImpl<$Res, PageCommand>;
}

/// @nodoc
class _$PageCommandCopyWithImpl<$Res, $Val extends PageCommand>
    implements $PageCommandCopyWith<$Res> {
  _$PageCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PageCommandCopyWith<$Res> {
  factory _$$_PageCommandCopyWith(
          _$_PageCommand value, $Res Function(_$_PageCommand) then) =
      __$$_PageCommandCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PageCommandCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_PageCommand>
    implements _$$_PageCommandCopyWith<$Res> {
  __$$_PageCommandCopyWithImpl(
      _$_PageCommand _value, $Res Function(_$_PageCommand) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PageCommand extends _PageCommand {
  _$_PageCommand() : super._();

  @override
  String toString() {
    return 'PageCommand()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PageCommand);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _PageCommand extends PageCommand {
  factory _PageCommand() = _$_PageCommand;
  _PageCommand._() : super._();
}

/// @nodoc
mixin _$PageCommandNavigation {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String page, dynamic argument) toPage,
    required TResult Function(String page, dynamic argument) replacePage,
    required TResult Function(
            String page, RoutePredicate predicate, dynamic argument)
        pushAndRemoveUntilPage,
    required TResult Function(PopResult? result, bool isDialog) pop,
    required TResult Function(String page, PopResult? popResult) popUntil,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String page, dynamic argument)? toPage,
    TResult? Function(String page, dynamic argument)? replacePage,
    TResult? Function(String page, RoutePredicate predicate, dynamic argument)?
        pushAndRemoveUntilPage,
    TResult? Function(PopResult? result, bool isDialog)? pop,
    TResult? Function(String page, PopResult? popResult)? popUntil,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String page, dynamic argument)? toPage,
    TResult Function(String page, dynamic argument)? replacePage,
    TResult Function(String page, RoutePredicate predicate, dynamic argument)?
        pushAndRemoveUntilPage,
    TResult Function(PopResult? result, bool isDialog)? pop,
    TResult Function(String page, PopResult? popResult)? popUntil,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToPage value) toPage,
    required TResult Function(_ReplacePage value) replacePage,
    required TResult Function(_PushAndRemoveUntilPage value)
        pushAndRemoveUntilPage,
    required TResult Function(_Pop value) pop,
    required TResult Function(_PopUntil value) popUntil,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToPage value)? toPage,
    TResult? Function(_ReplacePage value)? replacePage,
    TResult? Function(_PushAndRemoveUntilPage value)? pushAndRemoveUntilPage,
    TResult? Function(_Pop value)? pop,
    TResult? Function(_PopUntil value)? popUntil,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToPage value)? toPage,
    TResult Function(_ReplacePage value)? replacePage,
    TResult Function(_PushAndRemoveUntilPage value)? pushAndRemoveUntilPage,
    TResult Function(_Pop value)? pop,
    TResult Function(_PopUntil value)? popUntil,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageCommandNavigationCopyWith<$Res> {
  factory $PageCommandNavigationCopyWith(PageCommandNavigation value,
          $Res Function(PageCommandNavigation) then) =
      _$PageCommandNavigationCopyWithImpl<$Res, PageCommandNavigation>;
}

/// @nodoc
class _$PageCommandNavigationCopyWithImpl<$Res,
        $Val extends PageCommandNavigation>
    implements $PageCommandNavigationCopyWith<$Res> {
  _$PageCommandNavigationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ToPageCopyWith<$Res> {
  factory _$$_ToPageCopyWith(_$_ToPage value, $Res Function(_$_ToPage) then) =
      __$$_ToPageCopyWithImpl<$Res>;
  @useResult
  $Res call({String page, dynamic argument});
}

/// @nodoc
class __$$_ToPageCopyWithImpl<$Res>
    extends _$PageCommandNavigationCopyWithImpl<$Res, _$_ToPage>
    implements _$$_ToPageCopyWith<$Res> {
  __$$_ToPageCopyWithImpl(_$_ToPage _value, $Res Function(_$_ToPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? argument = freezed,
  }) {
    return _then(_$_ToPage(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      argument: freezed == argument
          ? _value.argument
          : argument // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_ToPage extends _ToPage {
  _$_ToPage(this.page, {this.argument}) : super._();

  @override
  final String page;
  @override
  final dynamic argument;

  @override
  String toString() {
    return 'PageCommandNavigation.toPage(page: $page, argument: $argument)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToPage &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other.argument, argument));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(argument));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToPageCopyWith<_$_ToPage> get copyWith =>
      __$$_ToPageCopyWithImpl<_$_ToPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String page, dynamic argument) toPage,
    required TResult Function(String page, dynamic argument) replacePage,
    required TResult Function(
            String page, RoutePredicate predicate, dynamic argument)
        pushAndRemoveUntilPage,
    required TResult Function(PopResult? result, bool isDialog) pop,
    required TResult Function(String page, PopResult? popResult) popUntil,
  }) {
    return toPage(page, argument);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String page, dynamic argument)? toPage,
    TResult? Function(String page, dynamic argument)? replacePage,
    TResult? Function(String page, RoutePredicate predicate, dynamic argument)?
        pushAndRemoveUntilPage,
    TResult? Function(PopResult? result, bool isDialog)? pop,
    TResult? Function(String page, PopResult? popResult)? popUntil,
  }) {
    return toPage?.call(page, argument);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String page, dynamic argument)? toPage,
    TResult Function(String page, dynamic argument)? replacePage,
    TResult Function(String page, RoutePredicate predicate, dynamic argument)?
        pushAndRemoveUntilPage,
    TResult Function(PopResult? result, bool isDialog)? pop,
    TResult Function(String page, PopResult? popResult)? popUntil,
    required TResult orElse(),
  }) {
    if (toPage != null) {
      return toPage(page, argument);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToPage value) toPage,
    required TResult Function(_ReplacePage value) replacePage,
    required TResult Function(_PushAndRemoveUntilPage value)
        pushAndRemoveUntilPage,
    required TResult Function(_Pop value) pop,
    required TResult Function(_PopUntil value) popUntil,
  }) {
    return toPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToPage value)? toPage,
    TResult? Function(_ReplacePage value)? replacePage,
    TResult? Function(_PushAndRemoveUntilPage value)? pushAndRemoveUntilPage,
    TResult? Function(_Pop value)? pop,
    TResult? Function(_PopUntil value)? popUntil,
  }) {
    return toPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToPage value)? toPage,
    TResult Function(_ReplacePage value)? replacePage,
    TResult Function(_PushAndRemoveUntilPage value)? pushAndRemoveUntilPage,
    TResult Function(_Pop value)? pop,
    TResult Function(_PopUntil value)? popUntil,
    required TResult orElse(),
  }) {
    if (toPage != null) {
      return toPage(this);
    }
    return orElse();
  }
}

abstract class _ToPage extends PageCommandNavigation {
  factory _ToPage(final String page, {final dynamic argument}) = _$_ToPage;
  _ToPage._() : super._();

  String get page;
  dynamic get argument;
  @JsonKey(ignore: true)
  _$$_ToPageCopyWith<_$_ToPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReplacePageCopyWith<$Res> {
  factory _$$_ReplacePageCopyWith(
          _$_ReplacePage value, $Res Function(_$_ReplacePage) then) =
      __$$_ReplacePageCopyWithImpl<$Res>;
  @useResult
  $Res call({String page, dynamic argument});
}

/// @nodoc
class __$$_ReplacePageCopyWithImpl<$Res>
    extends _$PageCommandNavigationCopyWithImpl<$Res, _$_ReplacePage>
    implements _$$_ReplacePageCopyWith<$Res> {
  __$$_ReplacePageCopyWithImpl(
      _$_ReplacePage _value, $Res Function(_$_ReplacePage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? argument = freezed,
  }) {
    return _then(_$_ReplacePage(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      argument: freezed == argument
          ? _value.argument
          : argument // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_ReplacePage extends _ReplacePage {
  _$_ReplacePage(this.page, {this.argument}) : super._();

  @override
  final String page;
  @override
  final dynamic argument;

  @override
  String toString() {
    return 'PageCommandNavigation.replacePage(page: $page, argument: $argument)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReplacePage &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other.argument, argument));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(argument));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReplacePageCopyWith<_$_ReplacePage> get copyWith =>
      __$$_ReplacePageCopyWithImpl<_$_ReplacePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String page, dynamic argument) toPage,
    required TResult Function(String page, dynamic argument) replacePage,
    required TResult Function(
            String page, RoutePredicate predicate, dynamic argument)
        pushAndRemoveUntilPage,
    required TResult Function(PopResult? result, bool isDialog) pop,
    required TResult Function(String page, PopResult? popResult) popUntil,
  }) {
    return replacePage(page, argument);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String page, dynamic argument)? toPage,
    TResult? Function(String page, dynamic argument)? replacePage,
    TResult? Function(String page, RoutePredicate predicate, dynamic argument)?
        pushAndRemoveUntilPage,
    TResult? Function(PopResult? result, bool isDialog)? pop,
    TResult? Function(String page, PopResult? popResult)? popUntil,
  }) {
    return replacePage?.call(page, argument);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String page, dynamic argument)? toPage,
    TResult Function(String page, dynamic argument)? replacePage,
    TResult Function(String page, RoutePredicate predicate, dynamic argument)?
        pushAndRemoveUntilPage,
    TResult Function(PopResult? result, bool isDialog)? pop,
    TResult Function(String page, PopResult? popResult)? popUntil,
    required TResult orElse(),
  }) {
    if (replacePage != null) {
      return replacePage(page, argument);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToPage value) toPage,
    required TResult Function(_ReplacePage value) replacePage,
    required TResult Function(_PushAndRemoveUntilPage value)
        pushAndRemoveUntilPage,
    required TResult Function(_Pop value) pop,
    required TResult Function(_PopUntil value) popUntil,
  }) {
    return replacePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToPage value)? toPage,
    TResult? Function(_ReplacePage value)? replacePage,
    TResult? Function(_PushAndRemoveUntilPage value)? pushAndRemoveUntilPage,
    TResult? Function(_Pop value)? pop,
    TResult? Function(_PopUntil value)? popUntil,
  }) {
    return replacePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToPage value)? toPage,
    TResult Function(_ReplacePage value)? replacePage,
    TResult Function(_PushAndRemoveUntilPage value)? pushAndRemoveUntilPage,
    TResult Function(_Pop value)? pop,
    TResult Function(_PopUntil value)? popUntil,
    required TResult orElse(),
  }) {
    if (replacePage != null) {
      return replacePage(this);
    }
    return orElse();
  }
}

abstract class _ReplacePage extends PageCommandNavigation {
  factory _ReplacePage(final String page, {final dynamic argument}) =
      _$_ReplacePage;
  _ReplacePage._() : super._();

  String get page;
  dynamic get argument;
  @JsonKey(ignore: true)
  _$$_ReplacePageCopyWith<_$_ReplacePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PushAndRemoveUntilPageCopyWith<$Res> {
  factory _$$_PushAndRemoveUntilPageCopyWith(_$_PushAndRemoveUntilPage value,
          $Res Function(_$_PushAndRemoveUntilPage) then) =
      __$$_PushAndRemoveUntilPageCopyWithImpl<$Res>;
  @useResult
  $Res call({String page, RoutePredicate predicate, dynamic argument});
}

/// @nodoc
class __$$_PushAndRemoveUntilPageCopyWithImpl<$Res>
    extends _$PageCommandNavigationCopyWithImpl<$Res, _$_PushAndRemoveUntilPage>
    implements _$$_PushAndRemoveUntilPageCopyWith<$Res> {
  __$$_PushAndRemoveUntilPageCopyWithImpl(_$_PushAndRemoveUntilPage _value,
      $Res Function(_$_PushAndRemoveUntilPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? predicate = null,
    Object? argument = freezed,
  }) {
    return _then(_$_PushAndRemoveUntilPage(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      null == predicate
          ? _value.predicate
          : predicate // ignore: cast_nullable_to_non_nullable
              as RoutePredicate,
      argument: freezed == argument
          ? _value.argument
          : argument // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_PushAndRemoveUntilPage extends _PushAndRemoveUntilPage {
  _$_PushAndRemoveUntilPage(this.page, this.predicate, {this.argument})
      : super._();

  @override
  final String page;
  @override
  final RoutePredicate predicate;
  @override
  final dynamic argument;

  @override
  String toString() {
    return 'PageCommandNavigation.pushAndRemoveUntilPage(page: $page, predicate: $predicate, argument: $argument)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushAndRemoveUntilPage &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.predicate, predicate) ||
                other.predicate == predicate) &&
            const DeepCollectionEquality().equals(other.argument, argument));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, predicate,
      const DeepCollectionEquality().hash(argument));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushAndRemoveUntilPageCopyWith<_$_PushAndRemoveUntilPage> get copyWith =>
      __$$_PushAndRemoveUntilPageCopyWithImpl<_$_PushAndRemoveUntilPage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String page, dynamic argument) toPage,
    required TResult Function(String page, dynamic argument) replacePage,
    required TResult Function(
            String page, RoutePredicate predicate, dynamic argument)
        pushAndRemoveUntilPage,
    required TResult Function(PopResult? result, bool isDialog) pop,
    required TResult Function(String page, PopResult? popResult) popUntil,
  }) {
    return pushAndRemoveUntilPage(page, predicate, argument);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String page, dynamic argument)? toPage,
    TResult? Function(String page, dynamic argument)? replacePage,
    TResult? Function(String page, RoutePredicate predicate, dynamic argument)?
        pushAndRemoveUntilPage,
    TResult? Function(PopResult? result, bool isDialog)? pop,
    TResult? Function(String page, PopResult? popResult)? popUntil,
  }) {
    return pushAndRemoveUntilPage?.call(page, predicate, argument);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String page, dynamic argument)? toPage,
    TResult Function(String page, dynamic argument)? replacePage,
    TResult Function(String page, RoutePredicate predicate, dynamic argument)?
        pushAndRemoveUntilPage,
    TResult Function(PopResult? result, bool isDialog)? pop,
    TResult Function(String page, PopResult? popResult)? popUntil,
    required TResult orElse(),
  }) {
    if (pushAndRemoveUntilPage != null) {
      return pushAndRemoveUntilPage(page, predicate, argument);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToPage value) toPage,
    required TResult Function(_ReplacePage value) replacePage,
    required TResult Function(_PushAndRemoveUntilPage value)
        pushAndRemoveUntilPage,
    required TResult Function(_Pop value) pop,
    required TResult Function(_PopUntil value) popUntil,
  }) {
    return pushAndRemoveUntilPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToPage value)? toPage,
    TResult? Function(_ReplacePage value)? replacePage,
    TResult? Function(_PushAndRemoveUntilPage value)? pushAndRemoveUntilPage,
    TResult? Function(_Pop value)? pop,
    TResult? Function(_PopUntil value)? popUntil,
  }) {
    return pushAndRemoveUntilPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToPage value)? toPage,
    TResult Function(_ReplacePage value)? replacePage,
    TResult Function(_PushAndRemoveUntilPage value)? pushAndRemoveUntilPage,
    TResult Function(_Pop value)? pop,
    TResult Function(_PopUntil value)? popUntil,
    required TResult orElse(),
  }) {
    if (pushAndRemoveUntilPage != null) {
      return pushAndRemoveUntilPage(this);
    }
    return orElse();
  }
}

abstract class _PushAndRemoveUntilPage extends PageCommandNavigation {
  factory _PushAndRemoveUntilPage(
      final String page, final RoutePredicate predicate,
      {final dynamic argument}) = _$_PushAndRemoveUntilPage;
  _PushAndRemoveUntilPage._() : super._();

  String get page;
  RoutePredicate get predicate;
  dynamic get argument;
  @JsonKey(ignore: true)
  _$$_PushAndRemoveUntilPageCopyWith<_$_PushAndRemoveUntilPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PopCopyWith<$Res> {
  factory _$$_PopCopyWith(_$_Pop value, $Res Function(_$_Pop) then) =
      __$$_PopCopyWithImpl<$Res>;
  @useResult
  $Res call({PopResult? result, bool isDialog});
}

/// @nodoc
class __$$_PopCopyWithImpl<$Res>
    extends _$PageCommandNavigationCopyWithImpl<$Res, _$_Pop>
    implements _$$_PopCopyWith<$Res> {
  __$$_PopCopyWithImpl(_$_Pop _value, $Res Function(_$_Pop) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? isDialog = null,
  }) {
    return _then(_$_Pop(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PopResult?,
      isDialog: null == isDialog
          ? _value.isDialog
          : isDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Pop extends _Pop {
  _$_Pop({this.result, this.isDialog = false}) : super._();

  @override
  final PopResult? result;
  @override
  @JsonKey()
  final bool isDialog;

  @override
  String toString() {
    return 'PageCommandNavigation.pop(result: $result, isDialog: $isDialog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pop &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.isDialog, isDialog) ||
                other.isDialog == isDialog));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result, isDialog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PopCopyWith<_$_Pop> get copyWith =>
      __$$_PopCopyWithImpl<_$_Pop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String page, dynamic argument) toPage,
    required TResult Function(String page, dynamic argument) replacePage,
    required TResult Function(
            String page, RoutePredicate predicate, dynamic argument)
        pushAndRemoveUntilPage,
    required TResult Function(PopResult? result, bool isDialog) pop,
    required TResult Function(String page, PopResult? popResult) popUntil,
  }) {
    return pop(result, isDialog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String page, dynamic argument)? toPage,
    TResult? Function(String page, dynamic argument)? replacePage,
    TResult? Function(String page, RoutePredicate predicate, dynamic argument)?
        pushAndRemoveUntilPage,
    TResult? Function(PopResult? result, bool isDialog)? pop,
    TResult? Function(String page, PopResult? popResult)? popUntil,
  }) {
    return pop?.call(result, isDialog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String page, dynamic argument)? toPage,
    TResult Function(String page, dynamic argument)? replacePage,
    TResult Function(String page, RoutePredicate predicate, dynamic argument)?
        pushAndRemoveUntilPage,
    TResult Function(PopResult? result, bool isDialog)? pop,
    TResult Function(String page, PopResult? popResult)? popUntil,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(result, isDialog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToPage value) toPage,
    required TResult Function(_ReplacePage value) replacePage,
    required TResult Function(_PushAndRemoveUntilPage value)
        pushAndRemoveUntilPage,
    required TResult Function(_Pop value) pop,
    required TResult Function(_PopUntil value) popUntil,
  }) {
    return pop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToPage value)? toPage,
    TResult? Function(_ReplacePage value)? replacePage,
    TResult? Function(_PushAndRemoveUntilPage value)? pushAndRemoveUntilPage,
    TResult? Function(_Pop value)? pop,
    TResult? Function(_PopUntil value)? popUntil,
  }) {
    return pop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToPage value)? toPage,
    TResult Function(_ReplacePage value)? replacePage,
    TResult Function(_PushAndRemoveUntilPage value)? pushAndRemoveUntilPage,
    TResult Function(_Pop value)? pop,
    TResult Function(_PopUntil value)? popUntil,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(this);
    }
    return orElse();
  }
}

abstract class _Pop extends PageCommandNavigation {
  factory _Pop({final PopResult? result, final bool isDialog}) = _$_Pop;
  _Pop._() : super._();

  PopResult? get result;
  bool get isDialog;
  @JsonKey(ignore: true)
  _$$_PopCopyWith<_$_Pop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PopUntilCopyWith<$Res> {
  factory _$$_PopUntilCopyWith(
          _$_PopUntil value, $Res Function(_$_PopUntil) then) =
      __$$_PopUntilCopyWithImpl<$Res>;
  @useResult
  $Res call({String page, PopResult? popResult});
}

/// @nodoc
class __$$_PopUntilCopyWithImpl<$Res>
    extends _$PageCommandNavigationCopyWithImpl<$Res, _$_PopUntil>
    implements _$$_PopUntilCopyWith<$Res> {
  __$$_PopUntilCopyWithImpl(
      _$_PopUntil _value, $Res Function(_$_PopUntil) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? popResult = freezed,
  }) {
    return _then(_$_PopUntil(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      popResult: freezed == popResult
          ? _value.popResult
          : popResult // ignore: cast_nullable_to_non_nullable
              as PopResult?,
    ));
  }
}

/// @nodoc

class _$_PopUntil extends _PopUntil {
  _$_PopUntil(this.page, {this.popResult}) : super._();

  @override
  final String page;
  @override
  final PopResult? popResult;

  @override
  String toString() {
    return 'PageCommandNavigation.popUntil(page: $page, popResult: $popResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PopUntil &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.popResult, popResult) ||
                other.popResult == popResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, popResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PopUntilCopyWith<_$_PopUntil> get copyWith =>
      __$$_PopUntilCopyWithImpl<_$_PopUntil>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String page, dynamic argument) toPage,
    required TResult Function(String page, dynamic argument) replacePage,
    required TResult Function(
            String page, RoutePredicate predicate, dynamic argument)
        pushAndRemoveUntilPage,
    required TResult Function(PopResult? result, bool isDialog) pop,
    required TResult Function(String page, PopResult? popResult) popUntil,
  }) {
    return popUntil(page, popResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String page, dynamic argument)? toPage,
    TResult? Function(String page, dynamic argument)? replacePage,
    TResult? Function(String page, RoutePredicate predicate, dynamic argument)?
        pushAndRemoveUntilPage,
    TResult? Function(PopResult? result, bool isDialog)? pop,
    TResult? Function(String page, PopResult? popResult)? popUntil,
  }) {
    return popUntil?.call(page, popResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String page, dynamic argument)? toPage,
    TResult Function(String page, dynamic argument)? replacePage,
    TResult Function(String page, RoutePredicate predicate, dynamic argument)?
        pushAndRemoveUntilPage,
    TResult Function(PopResult? result, bool isDialog)? pop,
    TResult Function(String page, PopResult? popResult)? popUntil,
    required TResult orElse(),
  }) {
    if (popUntil != null) {
      return popUntil(page, popResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToPage value) toPage,
    required TResult Function(_ReplacePage value) replacePage,
    required TResult Function(_PushAndRemoveUntilPage value)
        pushAndRemoveUntilPage,
    required TResult Function(_Pop value) pop,
    required TResult Function(_PopUntil value) popUntil,
  }) {
    return popUntil(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToPage value)? toPage,
    TResult? Function(_ReplacePage value)? replacePage,
    TResult? Function(_PushAndRemoveUntilPage value)? pushAndRemoveUntilPage,
    TResult? Function(_Pop value)? pop,
    TResult? Function(_PopUntil value)? popUntil,
  }) {
    return popUntil?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToPage value)? toPage,
    TResult Function(_ReplacePage value)? replacePage,
    TResult Function(_PushAndRemoveUntilPage value)? pushAndRemoveUntilPage,
    TResult Function(_Pop value)? pop,
    TResult Function(_PopUntil value)? popUntil,
    required TResult orElse(),
  }) {
    if (popUntil != null) {
      return popUntil(this);
    }
    return orElse();
  }
}

abstract class _PopUntil extends PageCommandNavigation {
  factory _PopUntil(final String page, {final PopResult? popResult}) =
      _$_PopUntil;
  _PopUntil._() : super._();

  String get page;
  PopResult? get popResult;
  @JsonKey(ignore: true)
  _$$_PopUntilCopyWith<_$_PopUntil> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageCommandMessage {
  String get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) showError,
    required TResult Function(String msg) showSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? showError,
    TResult? Function(String msg)? showSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? showError,
    TResult Function(String msg)? showSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowErrorMessage value) showError,
    required TResult Function(_ShowSuccessMessage value) showSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowErrorMessage value)? showError,
    TResult? Function(_ShowSuccessMessage value)? showSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowErrorMessage value)? showError,
    TResult Function(_ShowSuccessMessage value)? showSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageCommandMessageCopyWith<PageCommandMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageCommandMessageCopyWith<$Res> {
  factory $PageCommandMessageCopyWith(
          PageCommandMessage value, $Res Function(PageCommandMessage) then) =
      _$PageCommandMessageCopyWithImpl<$Res, PageCommandMessage>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class _$PageCommandMessageCopyWithImpl<$Res, $Val extends PageCommandMessage>
    implements $PageCommandMessageCopyWith<$Res> {
  _$PageCommandMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShowErrorMessageCopyWith<$Res>
    implements $PageCommandMessageCopyWith<$Res> {
  factory _$$_ShowErrorMessageCopyWith(
          _$_ShowErrorMessage value, $Res Function(_$_ShowErrorMessage) then) =
      __$$_ShowErrorMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_ShowErrorMessageCopyWithImpl<$Res>
    extends _$PageCommandMessageCopyWithImpl<$Res, _$_ShowErrorMessage>
    implements _$$_ShowErrorMessageCopyWith<$Res> {
  __$$_ShowErrorMessageCopyWithImpl(
      _$_ShowErrorMessage _value, $Res Function(_$_ShowErrorMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_ShowErrorMessage(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowErrorMessage extends _ShowErrorMessage {
  _$_ShowErrorMessage(this.msg) : super._();

  @override
  final String msg;

  @override
  String toString() {
    return 'PageCommandMessage.showError(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowErrorMessage &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowErrorMessageCopyWith<_$_ShowErrorMessage> get copyWith =>
      __$$_ShowErrorMessageCopyWithImpl<_$_ShowErrorMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) showError,
    required TResult Function(String msg) showSuccess,
  }) {
    return showError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? showError,
    TResult? Function(String msg)? showSuccess,
  }) {
    return showError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? showError,
    TResult Function(String msg)? showSuccess,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowErrorMessage value) showError,
    required TResult Function(_ShowSuccessMessage value) showSuccess,
  }) {
    return showError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowErrorMessage value)? showError,
    TResult? Function(_ShowSuccessMessage value)? showSuccess,
  }) {
    return showError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowErrorMessage value)? showError,
    TResult Function(_ShowSuccessMessage value)? showSuccess,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(this);
    }
    return orElse();
  }
}

abstract class _ShowErrorMessage extends PageCommandMessage {
  factory _ShowErrorMessage(final String msg) = _$_ShowErrorMessage;
  _ShowErrorMessage._() : super._();

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$_ShowErrorMessageCopyWith<_$_ShowErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowSuccessMessageCopyWith<$Res>
    implements $PageCommandMessageCopyWith<$Res> {
  factory _$$_ShowSuccessMessageCopyWith(_$_ShowSuccessMessage value,
          $Res Function(_$_ShowSuccessMessage) then) =
      __$$_ShowSuccessMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_ShowSuccessMessageCopyWithImpl<$Res>
    extends _$PageCommandMessageCopyWithImpl<$Res, _$_ShowSuccessMessage>
    implements _$$_ShowSuccessMessageCopyWith<$Res> {
  __$$_ShowSuccessMessageCopyWithImpl(
      _$_ShowSuccessMessage _value, $Res Function(_$_ShowSuccessMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_ShowSuccessMessage(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowSuccessMessage extends _ShowSuccessMessage {
  _$_ShowSuccessMessage(this.msg) : super._();

  @override
  final String msg;

  @override
  String toString() {
    return 'PageCommandMessage.showSuccess(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowSuccessMessage &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowSuccessMessageCopyWith<_$_ShowSuccessMessage> get copyWith =>
      __$$_ShowSuccessMessageCopyWithImpl<_$_ShowSuccessMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) showError,
    required TResult Function(String msg) showSuccess,
  }) {
    return showSuccess(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? showError,
    TResult? Function(String msg)? showSuccess,
  }) {
    return showSuccess?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? showError,
    TResult Function(String msg)? showSuccess,
    required TResult orElse(),
  }) {
    if (showSuccess != null) {
      return showSuccess(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowErrorMessage value) showError,
    required TResult Function(_ShowSuccessMessage value) showSuccess,
  }) {
    return showSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowErrorMessage value)? showError,
    TResult? Function(_ShowSuccessMessage value)? showSuccess,
  }) {
    return showSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowErrorMessage value)? showError,
    TResult Function(_ShowSuccessMessage value)? showSuccess,
    required TResult orElse(),
  }) {
    if (showSuccess != null) {
      return showSuccess(this);
    }
    return orElse();
  }
}

abstract class _ShowSuccessMessage extends PageCommandMessage {
  factory _ShowSuccessMessage(final String msg) = _$_ShowSuccessMessage;
  _ShowSuccessMessage._() : super._();

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$_ShowSuccessMessageCopyWith<_$_ShowSuccessMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageCommandDialog {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DialogType dialogType, dynamic argument) $default, {
    required TResult Function(String msg) showError,
    required TResult Function(String msg) showSuccess,
    required TResult Function() showExpirationSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DialogType dialogType, dynamic argument)? $default, {
    TResult? Function(String msg)? showError,
    TResult? Function(String msg)? showSuccess,
    TResult? Function()? showExpirationSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DialogType dialogType, dynamic argument)? $default, {
    TResult Function(String msg)? showError,
    TResult Function(String msg)? showSuccess,
    TResult Function()? showExpirationSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PageCommandDialog value) $default, {
    required TResult Function(_ShowErrorDialog value) showError,
    required TResult Function(_ShowSuccessDialog value) showSuccess,
    required TResult Function(_ShowExpirationSessionDialog value)
        showExpirationSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PageCommandDialog value)? $default, {
    TResult? Function(_ShowErrorDialog value)? showError,
    TResult? Function(_ShowSuccessDialog value)? showSuccess,
    TResult? Function(_ShowExpirationSessionDialog value)?
        showExpirationSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PageCommandDialog value)? $default, {
    TResult Function(_ShowErrorDialog value)? showError,
    TResult Function(_ShowSuccessDialog value)? showSuccess,
    TResult Function(_ShowExpirationSessionDialog value)? showExpirationSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageCommandDialogCopyWith<$Res> {
  factory $PageCommandDialogCopyWith(
          PageCommandDialog value, $Res Function(PageCommandDialog) then) =
      _$PageCommandDialogCopyWithImpl<$Res, PageCommandDialog>;
}

/// @nodoc
class _$PageCommandDialogCopyWithImpl<$Res, $Val extends PageCommandDialog>
    implements $PageCommandDialogCopyWith<$Res> {
  _$PageCommandDialogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PageCommandDialogCopyWith<$Res> {
  factory _$$_PageCommandDialogCopyWith(_$_PageCommandDialog value,
          $Res Function(_$_PageCommandDialog) then) =
      __$$_PageCommandDialogCopyWithImpl<$Res>;
  @useResult
  $Res call({DialogType dialogType, dynamic argument});
}

/// @nodoc
class __$$_PageCommandDialogCopyWithImpl<$Res>
    extends _$PageCommandDialogCopyWithImpl<$Res, _$_PageCommandDialog>
    implements _$$_PageCommandDialogCopyWith<$Res> {
  __$$_PageCommandDialogCopyWithImpl(
      _$_PageCommandDialog _value, $Res Function(_$_PageCommandDialog) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dialogType = null,
    Object? argument = freezed,
  }) {
    return _then(_$_PageCommandDialog(
      null == dialogType
          ? _value.dialogType
          : dialogType // ignore: cast_nullable_to_non_nullable
              as DialogType,
      argument: freezed == argument
          ? _value.argument
          : argument // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_PageCommandDialog extends _PageCommandDialog {
  _$_PageCommandDialog(this.dialogType, {this.argument}) : super._();

  @override
  final DialogType dialogType;
  @override
  final dynamic argument;

  @override
  String toString() {
    return 'PageCommandDialog(dialogType: $dialogType, argument: $argument)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageCommandDialog &&
            (identical(other.dialogType, dialogType) ||
                other.dialogType == dialogType) &&
            const DeepCollectionEquality().equals(other.argument, argument));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, dialogType, const DeepCollectionEquality().hash(argument));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageCommandDialogCopyWith<_$_PageCommandDialog> get copyWith =>
      __$$_PageCommandDialogCopyWithImpl<_$_PageCommandDialog>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DialogType dialogType, dynamic argument) $default, {
    required TResult Function(String msg) showError,
    required TResult Function(String msg) showSuccess,
    required TResult Function() showExpirationSession,
  }) {
    return $default(dialogType, argument);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DialogType dialogType, dynamic argument)? $default, {
    TResult? Function(String msg)? showError,
    TResult? Function(String msg)? showSuccess,
    TResult? Function()? showExpirationSession,
  }) {
    return $default?.call(dialogType, argument);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DialogType dialogType, dynamic argument)? $default, {
    TResult Function(String msg)? showError,
    TResult Function(String msg)? showSuccess,
    TResult Function()? showExpirationSession,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(dialogType, argument);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PageCommandDialog value) $default, {
    required TResult Function(_ShowErrorDialog value) showError,
    required TResult Function(_ShowSuccessDialog value) showSuccess,
    required TResult Function(_ShowExpirationSessionDialog value)
        showExpirationSession,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PageCommandDialog value)? $default, {
    TResult? Function(_ShowErrorDialog value)? showError,
    TResult? Function(_ShowSuccessDialog value)? showSuccess,
    TResult? Function(_ShowExpirationSessionDialog value)?
        showExpirationSession,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PageCommandDialog value)? $default, {
    TResult Function(_ShowErrorDialog value)? showError,
    TResult Function(_ShowSuccessDialog value)? showSuccess,
    TResult Function(_ShowExpirationSessionDialog value)? showExpirationSession,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _PageCommandDialog extends PageCommandDialog {
  factory _PageCommandDialog(final DialogType dialogType,
      {final dynamic argument}) = _$_PageCommandDialog;
  _PageCommandDialog._() : super._();

  DialogType get dialogType;
  dynamic get argument;
  @JsonKey(ignore: true)
  _$$_PageCommandDialogCopyWith<_$_PageCommandDialog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowErrorDialogCopyWith<$Res> {
  factory _$$_ShowErrorDialogCopyWith(
          _$_ShowErrorDialog value, $Res Function(_$_ShowErrorDialog) then) =
      __$$_ShowErrorDialogCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_ShowErrorDialogCopyWithImpl<$Res>
    extends _$PageCommandDialogCopyWithImpl<$Res, _$_ShowErrorDialog>
    implements _$$_ShowErrorDialogCopyWith<$Res> {
  __$$_ShowErrorDialogCopyWithImpl(
      _$_ShowErrorDialog _value, $Res Function(_$_ShowErrorDialog) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_ShowErrorDialog(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowErrorDialog extends _ShowErrorDialog {
  _$_ShowErrorDialog(this.msg) : super._();

  @override
  final String msg;

  @override
  String toString() {
    return 'PageCommandDialog.showError(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowErrorDialog &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowErrorDialogCopyWith<_$_ShowErrorDialog> get copyWith =>
      __$$_ShowErrorDialogCopyWithImpl<_$_ShowErrorDialog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DialogType dialogType, dynamic argument) $default, {
    required TResult Function(String msg) showError,
    required TResult Function(String msg) showSuccess,
    required TResult Function() showExpirationSession,
  }) {
    return showError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DialogType dialogType, dynamic argument)? $default, {
    TResult? Function(String msg)? showError,
    TResult? Function(String msg)? showSuccess,
    TResult? Function()? showExpirationSession,
  }) {
    return showError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DialogType dialogType, dynamic argument)? $default, {
    TResult Function(String msg)? showError,
    TResult Function(String msg)? showSuccess,
    TResult Function()? showExpirationSession,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PageCommandDialog value) $default, {
    required TResult Function(_ShowErrorDialog value) showError,
    required TResult Function(_ShowSuccessDialog value) showSuccess,
    required TResult Function(_ShowExpirationSessionDialog value)
        showExpirationSession,
  }) {
    return showError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PageCommandDialog value)? $default, {
    TResult? Function(_ShowErrorDialog value)? showError,
    TResult? Function(_ShowSuccessDialog value)? showSuccess,
    TResult? Function(_ShowExpirationSessionDialog value)?
        showExpirationSession,
  }) {
    return showError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PageCommandDialog value)? $default, {
    TResult Function(_ShowErrorDialog value)? showError,
    TResult Function(_ShowSuccessDialog value)? showSuccess,
    TResult Function(_ShowExpirationSessionDialog value)? showExpirationSession,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(this);
    }
    return orElse();
  }
}

abstract class _ShowErrorDialog extends PageCommandDialog {
  factory _ShowErrorDialog(final String msg) = _$_ShowErrorDialog;
  _ShowErrorDialog._() : super._();

  String get msg;
  @JsonKey(ignore: true)
  _$$_ShowErrorDialogCopyWith<_$_ShowErrorDialog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowSuccessDialogCopyWith<$Res> {
  factory _$$_ShowSuccessDialogCopyWith(_$_ShowSuccessDialog value,
          $Res Function(_$_ShowSuccessDialog) then) =
      __$$_ShowSuccessDialogCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_ShowSuccessDialogCopyWithImpl<$Res>
    extends _$PageCommandDialogCopyWithImpl<$Res, _$_ShowSuccessDialog>
    implements _$$_ShowSuccessDialogCopyWith<$Res> {
  __$$_ShowSuccessDialogCopyWithImpl(
      _$_ShowSuccessDialog _value, $Res Function(_$_ShowSuccessDialog) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_ShowSuccessDialog(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowSuccessDialog extends _ShowSuccessDialog {
  _$_ShowSuccessDialog(this.msg) : super._();

  @override
  final String msg;

  @override
  String toString() {
    return 'PageCommandDialog.showSuccess(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowSuccessDialog &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowSuccessDialogCopyWith<_$_ShowSuccessDialog> get copyWith =>
      __$$_ShowSuccessDialogCopyWithImpl<_$_ShowSuccessDialog>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DialogType dialogType, dynamic argument) $default, {
    required TResult Function(String msg) showError,
    required TResult Function(String msg) showSuccess,
    required TResult Function() showExpirationSession,
  }) {
    return showSuccess(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DialogType dialogType, dynamic argument)? $default, {
    TResult? Function(String msg)? showError,
    TResult? Function(String msg)? showSuccess,
    TResult? Function()? showExpirationSession,
  }) {
    return showSuccess?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DialogType dialogType, dynamic argument)? $default, {
    TResult Function(String msg)? showError,
    TResult Function(String msg)? showSuccess,
    TResult Function()? showExpirationSession,
    required TResult orElse(),
  }) {
    if (showSuccess != null) {
      return showSuccess(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PageCommandDialog value) $default, {
    required TResult Function(_ShowErrorDialog value) showError,
    required TResult Function(_ShowSuccessDialog value) showSuccess,
    required TResult Function(_ShowExpirationSessionDialog value)
        showExpirationSession,
  }) {
    return showSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PageCommandDialog value)? $default, {
    TResult? Function(_ShowErrorDialog value)? showError,
    TResult? Function(_ShowSuccessDialog value)? showSuccess,
    TResult? Function(_ShowExpirationSessionDialog value)?
        showExpirationSession,
  }) {
    return showSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PageCommandDialog value)? $default, {
    TResult Function(_ShowErrorDialog value)? showError,
    TResult Function(_ShowSuccessDialog value)? showSuccess,
    TResult Function(_ShowExpirationSessionDialog value)? showExpirationSession,
    required TResult orElse(),
  }) {
    if (showSuccess != null) {
      return showSuccess(this);
    }
    return orElse();
  }
}

abstract class _ShowSuccessDialog extends PageCommandDialog {
  factory _ShowSuccessDialog(final String msg) = _$_ShowSuccessDialog;
  _ShowSuccessDialog._() : super._();

  String get msg;
  @JsonKey(ignore: true)
  _$$_ShowSuccessDialogCopyWith<_$_ShowSuccessDialog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowExpirationSessionDialogCopyWith<$Res> {
  factory _$$_ShowExpirationSessionDialogCopyWith(
          _$_ShowExpirationSessionDialog value,
          $Res Function(_$_ShowExpirationSessionDialog) then) =
      __$$_ShowExpirationSessionDialogCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowExpirationSessionDialogCopyWithImpl<$Res>
    extends _$PageCommandDialogCopyWithImpl<$Res,
        _$_ShowExpirationSessionDialog>
    implements _$$_ShowExpirationSessionDialogCopyWith<$Res> {
  __$$_ShowExpirationSessionDialogCopyWithImpl(
      _$_ShowExpirationSessionDialog _value,
      $Res Function(_$_ShowExpirationSessionDialog) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ShowExpirationSessionDialog extends _ShowExpirationSessionDialog {
  _$_ShowExpirationSessionDialog() : super._();

  @override
  String toString() {
    return 'PageCommandDialog.showExpirationSession()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowExpirationSessionDialog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DialogType dialogType, dynamic argument) $default, {
    required TResult Function(String msg) showError,
    required TResult Function(String msg) showSuccess,
    required TResult Function() showExpirationSession,
  }) {
    return showExpirationSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DialogType dialogType, dynamic argument)? $default, {
    TResult? Function(String msg)? showError,
    TResult? Function(String msg)? showSuccess,
    TResult? Function()? showExpirationSession,
  }) {
    return showExpirationSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DialogType dialogType, dynamic argument)? $default, {
    TResult Function(String msg)? showError,
    TResult Function(String msg)? showSuccess,
    TResult Function()? showExpirationSession,
    required TResult orElse(),
  }) {
    if (showExpirationSession != null) {
      return showExpirationSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PageCommandDialog value) $default, {
    required TResult Function(_ShowErrorDialog value) showError,
    required TResult Function(_ShowSuccessDialog value) showSuccess,
    required TResult Function(_ShowExpirationSessionDialog value)
        showExpirationSession,
  }) {
    return showExpirationSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PageCommandDialog value)? $default, {
    TResult? Function(_ShowErrorDialog value)? showError,
    TResult? Function(_ShowSuccessDialog value)? showSuccess,
    TResult? Function(_ShowExpirationSessionDialog value)?
        showExpirationSession,
  }) {
    return showExpirationSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PageCommandDialog value)? $default, {
    TResult Function(_ShowErrorDialog value)? showError,
    TResult Function(_ShowSuccessDialog value)? showSuccess,
    TResult Function(_ShowExpirationSessionDialog value)? showExpirationSession,
    required TResult orElse(),
  }) {
    if (showExpirationSession != null) {
      return showExpirationSession(this);
    }
    return orElse();
  }
}

abstract class _ShowExpirationSessionDialog extends PageCommandDialog {
  factory _ShowExpirationSessionDialog() = _$_ShowExpirationSessionDialog;
  _ShowExpirationSessionDialog._() : super._();
}

/// @nodoc
mixin _$PageCommandShowBottomSheet {
  SheetType get sheetType => throw _privateConstructorUsedError;
  dynamic get argument => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageCommandShowBottomSheetCopyWith<PageCommandShowBottomSheet>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageCommandShowBottomSheetCopyWith<$Res> {
  factory $PageCommandShowBottomSheetCopyWith(PageCommandShowBottomSheet value,
          $Res Function(PageCommandShowBottomSheet) then) =
      _$PageCommandShowBottomSheetCopyWithImpl<$Res,
          PageCommandShowBottomSheet>;
  @useResult
  $Res call({SheetType sheetType, dynamic argument});
}

/// @nodoc
class _$PageCommandShowBottomSheetCopyWithImpl<$Res,
        $Val extends PageCommandShowBottomSheet>
    implements $PageCommandShowBottomSheetCopyWith<$Res> {
  _$PageCommandShowBottomSheetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sheetType = null,
    Object? argument = freezed,
  }) {
    return _then(_value.copyWith(
      sheetType: null == sheetType
          ? _value.sheetType
          : sheetType // ignore: cast_nullable_to_non_nullable
              as SheetType,
      argument: freezed == argument
          ? _value.argument
          : argument // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PageCommandShowBottomSheetCopyWith<$Res>
    implements $PageCommandShowBottomSheetCopyWith<$Res> {
  factory _$$_PageCommandShowBottomSheetCopyWith(
          _$_PageCommandShowBottomSheet value,
          $Res Function(_$_PageCommandShowBottomSheet) then) =
      __$$_PageCommandShowBottomSheetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SheetType sheetType, dynamic argument});
}

/// @nodoc
class __$$_PageCommandShowBottomSheetCopyWithImpl<$Res>
    extends _$PageCommandShowBottomSheetCopyWithImpl<$Res,
        _$_PageCommandShowBottomSheet>
    implements _$$_PageCommandShowBottomSheetCopyWith<$Res> {
  __$$_PageCommandShowBottomSheetCopyWithImpl(
      _$_PageCommandShowBottomSheet _value,
      $Res Function(_$_PageCommandShowBottomSheet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sheetType = null,
    Object? argument = freezed,
  }) {
    return _then(_$_PageCommandShowBottomSheet(
      sheetType: null == sheetType
          ? _value.sheetType
          : sheetType // ignore: cast_nullable_to_non_nullable
              as SheetType,
      argument: freezed == argument
          ? _value.argument
          : argument // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_PageCommandShowBottomSheet extends _PageCommandShowBottomSheet {
  _$_PageCommandShowBottomSheet({required this.sheetType, this.argument})
      : super._();

  @override
  final SheetType sheetType;
  @override
  final dynamic argument;

  @override
  String toString() {
    return 'PageCommandShowBottomSheet(sheetType: $sheetType, argument: $argument)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageCommandShowBottomSheet &&
            (identical(other.sheetType, sheetType) ||
                other.sheetType == sheetType) &&
            const DeepCollectionEquality().equals(other.argument, argument));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sheetType, const DeepCollectionEquality().hash(argument));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageCommandShowBottomSheetCopyWith<_$_PageCommandShowBottomSheet>
      get copyWith => __$$_PageCommandShowBottomSheetCopyWithImpl<
          _$_PageCommandShowBottomSheet>(this, _$identity);
}

abstract class _PageCommandShowBottomSheet extends PageCommandShowBottomSheet {
  factory _PageCommandShowBottomSheet(
      {required final SheetType sheetType,
      final dynamic argument}) = _$_PageCommandShowBottomSheet;
  _PageCommandShowBottomSheet._() : super._();

  @override
  SheetType get sheetType;
  @override
  dynamic get argument;
  @override
  @JsonKey(ignore: true)
  _$$_PageCommandShowBottomSheetCopyWith<_$_PageCommandShowBottomSheet>
      get copyWith => throw _privateConstructorUsedError;
}
