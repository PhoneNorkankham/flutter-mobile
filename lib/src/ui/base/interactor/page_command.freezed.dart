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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$PageCommandImplCopyWith<$Res> {
  factory _$$PageCommandImplCopyWith(
          _$PageCommandImpl value, $Res Function(_$PageCommandImpl) then) =
      __$$PageCommandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PageCommandImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$PageCommandImpl>
    implements _$$PageCommandImplCopyWith<$Res> {
  __$$PageCommandImplCopyWithImpl(
      _$PageCommandImpl _value, $Res Function(_$PageCommandImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PageCommandImpl extends _PageCommand {
  _$PageCommandImpl() : super._();

  @override
  String toString() {
    return 'PageCommand()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PageCommandImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _PageCommand extends PageCommand {
  factory _PageCommand() = _$PageCommandImpl;
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
abstract class _$$ToPageImplCopyWith<$Res> {
  factory _$$ToPageImplCopyWith(
          _$ToPageImpl value, $Res Function(_$ToPageImpl) then) =
      __$$ToPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String page, dynamic argument});
}

/// @nodoc
class __$$ToPageImplCopyWithImpl<$Res>
    extends _$PageCommandNavigationCopyWithImpl<$Res, _$ToPageImpl>
    implements _$$ToPageImplCopyWith<$Res> {
  __$$ToPageImplCopyWithImpl(
      _$ToPageImpl _value, $Res Function(_$ToPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? argument = freezed,
  }) {
    return _then(_$ToPageImpl(
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

class _$ToPageImpl extends _ToPage {
  _$ToPageImpl(this.page, {this.argument}) : super._();

  @override
  final String page;
  @override
  final dynamic argument;

  @override
  String toString() {
    return 'PageCommandNavigation.toPage(page: $page, argument: $argument)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToPageImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other.argument, argument));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(argument));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToPageImplCopyWith<_$ToPageImpl> get copyWith =>
      __$$ToPageImplCopyWithImpl<_$ToPageImpl>(this, _$identity);

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
  factory _ToPage(final String page, {final dynamic argument}) = _$ToPageImpl;
  _ToPage._() : super._();

  String get page;
  dynamic get argument;
  @JsonKey(ignore: true)
  _$$ToPageImplCopyWith<_$ToPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReplacePageImplCopyWith<$Res> {
  factory _$$ReplacePageImplCopyWith(
          _$ReplacePageImpl value, $Res Function(_$ReplacePageImpl) then) =
      __$$ReplacePageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String page, dynamic argument});
}

/// @nodoc
class __$$ReplacePageImplCopyWithImpl<$Res>
    extends _$PageCommandNavigationCopyWithImpl<$Res, _$ReplacePageImpl>
    implements _$$ReplacePageImplCopyWith<$Res> {
  __$$ReplacePageImplCopyWithImpl(
      _$ReplacePageImpl _value, $Res Function(_$ReplacePageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? argument = freezed,
  }) {
    return _then(_$ReplacePageImpl(
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

class _$ReplacePageImpl extends _ReplacePage {
  _$ReplacePageImpl(this.page, {this.argument}) : super._();

  @override
  final String page;
  @override
  final dynamic argument;

  @override
  String toString() {
    return 'PageCommandNavigation.replacePage(page: $page, argument: $argument)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplacePageImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other.argument, argument));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(argument));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplacePageImplCopyWith<_$ReplacePageImpl> get copyWith =>
      __$$ReplacePageImplCopyWithImpl<_$ReplacePageImpl>(this, _$identity);

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
      _$ReplacePageImpl;
  _ReplacePage._() : super._();

  String get page;
  dynamic get argument;
  @JsonKey(ignore: true)
  _$$ReplacePageImplCopyWith<_$ReplacePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PushAndRemoveUntilPageImplCopyWith<$Res> {
  factory _$$PushAndRemoveUntilPageImplCopyWith(
          _$PushAndRemoveUntilPageImpl value,
          $Res Function(_$PushAndRemoveUntilPageImpl) then) =
      __$$PushAndRemoveUntilPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String page, RoutePredicate predicate, dynamic argument});
}

/// @nodoc
class __$$PushAndRemoveUntilPageImplCopyWithImpl<$Res>
    extends _$PageCommandNavigationCopyWithImpl<$Res,
        _$PushAndRemoveUntilPageImpl>
    implements _$$PushAndRemoveUntilPageImplCopyWith<$Res> {
  __$$PushAndRemoveUntilPageImplCopyWithImpl(
      _$PushAndRemoveUntilPageImpl _value,
      $Res Function(_$PushAndRemoveUntilPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? predicate = null,
    Object? argument = freezed,
  }) {
    return _then(_$PushAndRemoveUntilPageImpl(
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

class _$PushAndRemoveUntilPageImpl extends _PushAndRemoveUntilPage {
  _$PushAndRemoveUntilPageImpl(this.page, this.predicate, {this.argument})
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushAndRemoveUntilPageImpl &&
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
  _$$PushAndRemoveUntilPageImplCopyWith<_$PushAndRemoveUntilPageImpl>
      get copyWith => __$$PushAndRemoveUntilPageImplCopyWithImpl<
          _$PushAndRemoveUntilPageImpl>(this, _$identity);

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
      {final dynamic argument}) = _$PushAndRemoveUntilPageImpl;
  _PushAndRemoveUntilPage._() : super._();

  String get page;
  RoutePredicate get predicate;
  dynamic get argument;
  @JsonKey(ignore: true)
  _$$PushAndRemoveUntilPageImplCopyWith<_$PushAndRemoveUntilPageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PopImplCopyWith<$Res> {
  factory _$$PopImplCopyWith(_$PopImpl value, $Res Function(_$PopImpl) then) =
      __$$PopImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PopResult? result, bool isDialog});
}

/// @nodoc
class __$$PopImplCopyWithImpl<$Res>
    extends _$PageCommandNavigationCopyWithImpl<$Res, _$PopImpl>
    implements _$$PopImplCopyWith<$Res> {
  __$$PopImplCopyWithImpl(_$PopImpl _value, $Res Function(_$PopImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? isDialog = null,
  }) {
    return _then(_$PopImpl(
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

class _$PopImpl extends _Pop {
  _$PopImpl({this.result, this.isDialog = false}) : super._();

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.isDialog, isDialog) ||
                other.isDialog == isDialog));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result, isDialog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopImplCopyWith<_$PopImpl> get copyWith =>
      __$$PopImplCopyWithImpl<_$PopImpl>(this, _$identity);

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
  factory _Pop({final PopResult? result, final bool isDialog}) = _$PopImpl;
  _Pop._() : super._();

  PopResult? get result;
  bool get isDialog;
  @JsonKey(ignore: true)
  _$$PopImplCopyWith<_$PopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PopUntilImplCopyWith<$Res> {
  factory _$$PopUntilImplCopyWith(
          _$PopUntilImpl value, $Res Function(_$PopUntilImpl) then) =
      __$$PopUntilImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String page, PopResult? popResult});
}

/// @nodoc
class __$$PopUntilImplCopyWithImpl<$Res>
    extends _$PageCommandNavigationCopyWithImpl<$Res, _$PopUntilImpl>
    implements _$$PopUntilImplCopyWith<$Res> {
  __$$PopUntilImplCopyWithImpl(
      _$PopUntilImpl _value, $Res Function(_$PopUntilImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? popResult = freezed,
  }) {
    return _then(_$PopUntilImpl(
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

class _$PopUntilImpl extends _PopUntil {
  _$PopUntilImpl(this.page, {this.popResult}) : super._();

  @override
  final String page;
  @override
  final PopResult? popResult;

  @override
  String toString() {
    return 'PageCommandNavigation.popUntil(page: $page, popResult: $popResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopUntilImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.popResult, popResult) ||
                other.popResult == popResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, popResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopUntilImplCopyWith<_$PopUntilImpl> get copyWith =>
      __$$PopUntilImplCopyWithImpl<_$PopUntilImpl>(this, _$identity);

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
      _$PopUntilImpl;
  _PopUntil._() : super._();

  String get page;
  PopResult? get popResult;
  @JsonKey(ignore: true)
  _$$PopUntilImplCopyWith<_$PopUntilImpl> get copyWith =>
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
abstract class _$$ShowErrorMessageImplCopyWith<$Res>
    implements $PageCommandMessageCopyWith<$Res> {
  factory _$$ShowErrorMessageImplCopyWith(_$ShowErrorMessageImpl value,
          $Res Function(_$ShowErrorMessageImpl) then) =
      __$$ShowErrorMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ShowErrorMessageImplCopyWithImpl<$Res>
    extends _$PageCommandMessageCopyWithImpl<$Res, _$ShowErrorMessageImpl>
    implements _$$ShowErrorMessageImplCopyWith<$Res> {
  __$$ShowErrorMessageImplCopyWithImpl(_$ShowErrorMessageImpl _value,
      $Res Function(_$ShowErrorMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ShowErrorMessageImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowErrorMessageImpl extends _ShowErrorMessage {
  _$ShowErrorMessageImpl(this.msg) : super._();

  @override
  final String msg;

  @override
  String toString() {
    return 'PageCommandMessage.showError(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowErrorMessageImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowErrorMessageImplCopyWith<_$ShowErrorMessageImpl> get copyWith =>
      __$$ShowErrorMessageImplCopyWithImpl<_$ShowErrorMessageImpl>(
          this, _$identity);

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
  factory _ShowErrorMessage(final String msg) = _$ShowErrorMessageImpl;
  _ShowErrorMessage._() : super._();

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$ShowErrorMessageImplCopyWith<_$ShowErrorMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowSuccessMessageImplCopyWith<$Res>
    implements $PageCommandMessageCopyWith<$Res> {
  factory _$$ShowSuccessMessageImplCopyWith(_$ShowSuccessMessageImpl value,
          $Res Function(_$ShowSuccessMessageImpl) then) =
      __$$ShowSuccessMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ShowSuccessMessageImplCopyWithImpl<$Res>
    extends _$PageCommandMessageCopyWithImpl<$Res, _$ShowSuccessMessageImpl>
    implements _$$ShowSuccessMessageImplCopyWith<$Res> {
  __$$ShowSuccessMessageImplCopyWithImpl(_$ShowSuccessMessageImpl _value,
      $Res Function(_$ShowSuccessMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ShowSuccessMessageImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSuccessMessageImpl extends _ShowSuccessMessage {
  _$ShowSuccessMessageImpl(this.msg) : super._();

  @override
  final String msg;

  @override
  String toString() {
    return 'PageCommandMessage.showSuccess(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSuccessMessageImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSuccessMessageImplCopyWith<_$ShowSuccessMessageImpl> get copyWith =>
      __$$ShowSuccessMessageImplCopyWithImpl<_$ShowSuccessMessageImpl>(
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
  factory _ShowSuccessMessage(final String msg) = _$ShowSuccessMessageImpl;
  _ShowSuccessMessage._() : super._();

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$ShowSuccessMessageImplCopyWith<_$ShowSuccessMessageImpl> get copyWith =>
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
abstract class _$$PageCommandDialogImplCopyWith<$Res> {
  factory _$$PageCommandDialogImplCopyWith(_$PageCommandDialogImpl value,
          $Res Function(_$PageCommandDialogImpl) then) =
      __$$PageCommandDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DialogType dialogType, dynamic argument});
}

/// @nodoc
class __$$PageCommandDialogImplCopyWithImpl<$Res>
    extends _$PageCommandDialogCopyWithImpl<$Res, _$PageCommandDialogImpl>
    implements _$$PageCommandDialogImplCopyWith<$Res> {
  __$$PageCommandDialogImplCopyWithImpl(_$PageCommandDialogImpl _value,
      $Res Function(_$PageCommandDialogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dialogType = null,
    Object? argument = freezed,
  }) {
    return _then(_$PageCommandDialogImpl(
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

class _$PageCommandDialogImpl extends _PageCommandDialog {
  _$PageCommandDialogImpl(this.dialogType, {this.argument}) : super._();

  @override
  final DialogType dialogType;
  @override
  final dynamic argument;

  @override
  String toString() {
    return 'PageCommandDialog(dialogType: $dialogType, argument: $argument)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageCommandDialogImpl &&
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
  _$$PageCommandDialogImplCopyWith<_$PageCommandDialogImpl> get copyWith =>
      __$$PageCommandDialogImplCopyWithImpl<_$PageCommandDialogImpl>(
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
      {final dynamic argument}) = _$PageCommandDialogImpl;
  _PageCommandDialog._() : super._();

  DialogType get dialogType;
  dynamic get argument;
  @JsonKey(ignore: true)
  _$$PageCommandDialogImplCopyWith<_$PageCommandDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowErrorDialogImplCopyWith<$Res> {
  factory _$$ShowErrorDialogImplCopyWith(_$ShowErrorDialogImpl value,
          $Res Function(_$ShowErrorDialogImpl) then) =
      __$$ShowErrorDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ShowErrorDialogImplCopyWithImpl<$Res>
    extends _$PageCommandDialogCopyWithImpl<$Res, _$ShowErrorDialogImpl>
    implements _$$ShowErrorDialogImplCopyWith<$Res> {
  __$$ShowErrorDialogImplCopyWithImpl(
      _$ShowErrorDialogImpl _value, $Res Function(_$ShowErrorDialogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ShowErrorDialogImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowErrorDialogImpl extends _ShowErrorDialog {
  _$ShowErrorDialogImpl(this.msg) : super._();

  @override
  final String msg;

  @override
  String toString() {
    return 'PageCommandDialog.showError(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowErrorDialogImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowErrorDialogImplCopyWith<_$ShowErrorDialogImpl> get copyWith =>
      __$$ShowErrorDialogImplCopyWithImpl<_$ShowErrorDialogImpl>(
          this, _$identity);

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
  factory _ShowErrorDialog(final String msg) = _$ShowErrorDialogImpl;
  _ShowErrorDialog._() : super._();

  String get msg;
  @JsonKey(ignore: true)
  _$$ShowErrorDialogImplCopyWith<_$ShowErrorDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowSuccessDialogImplCopyWith<$Res> {
  factory _$$ShowSuccessDialogImplCopyWith(_$ShowSuccessDialogImpl value,
          $Res Function(_$ShowSuccessDialogImpl) then) =
      __$$ShowSuccessDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ShowSuccessDialogImplCopyWithImpl<$Res>
    extends _$PageCommandDialogCopyWithImpl<$Res, _$ShowSuccessDialogImpl>
    implements _$$ShowSuccessDialogImplCopyWith<$Res> {
  __$$ShowSuccessDialogImplCopyWithImpl(_$ShowSuccessDialogImpl _value,
      $Res Function(_$ShowSuccessDialogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ShowSuccessDialogImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSuccessDialogImpl extends _ShowSuccessDialog {
  _$ShowSuccessDialogImpl(this.msg) : super._();

  @override
  final String msg;

  @override
  String toString() {
    return 'PageCommandDialog.showSuccess(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSuccessDialogImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSuccessDialogImplCopyWith<_$ShowSuccessDialogImpl> get copyWith =>
      __$$ShowSuccessDialogImplCopyWithImpl<_$ShowSuccessDialogImpl>(
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
  factory _ShowSuccessDialog(final String msg) = _$ShowSuccessDialogImpl;
  _ShowSuccessDialog._() : super._();

  String get msg;
  @JsonKey(ignore: true)
  _$$ShowSuccessDialogImplCopyWith<_$ShowSuccessDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowExpirationSessionDialogImplCopyWith<$Res> {
  factory _$$ShowExpirationSessionDialogImplCopyWith(
          _$ShowExpirationSessionDialogImpl value,
          $Res Function(_$ShowExpirationSessionDialogImpl) then) =
      __$$ShowExpirationSessionDialogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowExpirationSessionDialogImplCopyWithImpl<$Res>
    extends _$PageCommandDialogCopyWithImpl<$Res,
        _$ShowExpirationSessionDialogImpl>
    implements _$$ShowExpirationSessionDialogImplCopyWith<$Res> {
  __$$ShowExpirationSessionDialogImplCopyWithImpl(
      _$ShowExpirationSessionDialogImpl _value,
      $Res Function(_$ShowExpirationSessionDialogImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowExpirationSessionDialogImpl extends _ShowExpirationSessionDialog {
  _$ShowExpirationSessionDialogImpl() : super._();

  @override
  String toString() {
    return 'PageCommandDialog.showExpirationSession()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowExpirationSessionDialogImpl);
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
  factory _ShowExpirationSessionDialog() = _$ShowExpirationSessionDialogImpl;
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
abstract class _$$PageCommandShowBottomSheetImplCopyWith<$Res>
    implements $PageCommandShowBottomSheetCopyWith<$Res> {
  factory _$$PageCommandShowBottomSheetImplCopyWith(
          _$PageCommandShowBottomSheetImpl value,
          $Res Function(_$PageCommandShowBottomSheetImpl) then) =
      __$$PageCommandShowBottomSheetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SheetType sheetType, dynamic argument});
}

/// @nodoc
class __$$PageCommandShowBottomSheetImplCopyWithImpl<$Res>
    extends _$PageCommandShowBottomSheetCopyWithImpl<$Res,
        _$PageCommandShowBottomSheetImpl>
    implements _$$PageCommandShowBottomSheetImplCopyWith<$Res> {
  __$$PageCommandShowBottomSheetImplCopyWithImpl(
      _$PageCommandShowBottomSheetImpl _value,
      $Res Function(_$PageCommandShowBottomSheetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sheetType = null,
    Object? argument = freezed,
  }) {
    return _then(_$PageCommandShowBottomSheetImpl(
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

class _$PageCommandShowBottomSheetImpl extends _PageCommandShowBottomSheet {
  _$PageCommandShowBottomSheetImpl({required this.sheetType, this.argument})
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageCommandShowBottomSheetImpl &&
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
  _$$PageCommandShowBottomSheetImplCopyWith<_$PageCommandShowBottomSheetImpl>
      get copyWith => __$$PageCommandShowBottomSheetImplCopyWithImpl<
          _$PageCommandShowBottomSheetImpl>(this, _$identity);
}

abstract class _PageCommandShowBottomSheet extends PageCommandShowBottomSheet {
  factory _PageCommandShowBottomSheet(
      {required final SheetType sheetType,
      final dynamic argument}) = _$PageCommandShowBottomSheetImpl;
  _PageCommandShowBottomSheet._() : super._();

  @override
  SheetType get sheetType;
  @override
  dynamic get argument;
  @override
  @JsonKey(ignore: true)
  _$$PageCommandShowBottomSheetImplCopyWith<_$PageCommandShowBottomSheetImpl>
      get copyWith => throw _privateConstructorUsedError;
}
