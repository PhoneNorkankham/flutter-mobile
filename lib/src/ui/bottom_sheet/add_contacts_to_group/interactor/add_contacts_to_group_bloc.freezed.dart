// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_contacts_to_group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddContactsToGroupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Group group) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(ContactRequest contact) onSelectedContact,
    required TResult Function(ContactRequest contact) onRemovedContact,
    required TResult Function() onAddContactsToGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(ContactRequest contact)? onSelectedContact,
    TResult? Function(ContactRequest contact)? onRemovedContact,
    TResult? Function()? onAddContactsToGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(ContactRequest contact)? onSelectedContact,
    TResult Function(ContactRequest contact)? onRemovedContact,
    TResult Function()? onAddContactsToGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedKeyword value) onChangedKeyword,
    required TResult Function(_OnSelectedContact value) onSelectedContact,
    required TResult Function(_OnRemovedContact value) onRemovedContact,
    required TResult Function(_OnAddContactsToGroup value) onAddContactsToGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnSelectedContact value)? onSelectedContact,
    TResult? Function(_OnRemovedContact value)? onRemovedContact,
    TResult? Function(_OnAddContactsToGroup value)? onAddContactsToGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnSelectedContact value)? onSelectedContact,
    TResult Function(_OnRemovedContact value)? onRemovedContact,
    TResult Function(_OnAddContactsToGroup value)? onAddContactsToGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddContactsToGroupEventCopyWith<$Res> {
  factory $AddContactsToGroupEventCopyWith(AddContactsToGroupEvent value,
          $Res Function(AddContactsToGroupEvent) then) =
      _$AddContactsToGroupEventCopyWithImpl<$Res, AddContactsToGroupEvent>;
}

/// @nodoc
class _$AddContactsToGroupEventCopyWithImpl<$Res,
        $Val extends AddContactsToGroupEvent>
    implements $AddContactsToGroupEventCopyWith<$Res> {
  _$AddContactsToGroupEventCopyWithImpl(this._value, this._then);

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
  $Res call({Group group});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AddContactsToGroupEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = freezed,
  }) {
    return _then(_$InitialImpl(
      freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.group);

  @override
  final Group group;

  @override
  String toString() {
    return 'AddContactsToGroupEvent.initial(group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other.group, group));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(group));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Group group) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(ContactRequest contact) onSelectedContact,
    required TResult Function(ContactRequest contact) onRemovedContact,
    required TResult Function() onAddContactsToGroup,
  }) {
    return initial(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(ContactRequest contact)? onSelectedContact,
    TResult? Function(ContactRequest contact)? onRemovedContact,
    TResult? Function()? onAddContactsToGroup,
  }) {
    return initial?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(ContactRequest contact)? onSelectedContact,
    TResult Function(ContactRequest contact)? onRemovedContact,
    TResult Function()? onAddContactsToGroup,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedKeyword value) onChangedKeyword,
    required TResult Function(_OnSelectedContact value) onSelectedContact,
    required TResult Function(_OnRemovedContact value) onRemovedContact,
    required TResult Function(_OnAddContactsToGroup value) onAddContactsToGroup,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnSelectedContact value)? onSelectedContact,
    TResult? Function(_OnRemovedContact value)? onRemovedContact,
    TResult? Function(_OnAddContactsToGroup value)? onAddContactsToGroup,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnSelectedContact value)? onSelectedContact,
    TResult Function(_OnRemovedContact value)? onRemovedContact,
    TResult Function(_OnAddContactsToGroup value)? onAddContactsToGroup,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddContactsToGroupEvent {
  const factory _Initial(final Group group) = _$InitialImpl;

  Group get group;
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
    extends _$AddContactsToGroupEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
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
    return 'AddContactsToGroupEvent.clearPageCommand()';
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
    required TResult Function(Group group) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(ContactRequest contact) onSelectedContact,
    required TResult Function(ContactRequest contact) onRemovedContact,
    required TResult Function() onAddContactsToGroup,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(ContactRequest contact)? onSelectedContact,
    TResult? Function(ContactRequest contact)? onRemovedContact,
    TResult? Function()? onAddContactsToGroup,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(ContactRequest contact)? onSelectedContact,
    TResult Function(ContactRequest contact)? onRemovedContact,
    TResult Function()? onAddContactsToGroup,
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
    required TResult Function(_OnSelectedContact value) onSelectedContact,
    required TResult Function(_OnRemovedContact value) onRemovedContact,
    required TResult Function(_OnAddContactsToGroup value) onAddContactsToGroup,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnSelectedContact value)? onSelectedContact,
    TResult? Function(_OnRemovedContact value)? onRemovedContact,
    TResult? Function(_OnAddContactsToGroup value)? onAddContactsToGroup,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnSelectedContact value)? onSelectedContact,
    TResult Function(_OnRemovedContact value)? onRemovedContact,
    TResult Function(_OnAddContactsToGroup value)? onAddContactsToGroup,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements AddContactsToGroupEvent {
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
    extends _$AddContactsToGroupEventCopyWithImpl<$Res, _$OnChangedKeywordImpl>
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
    return 'AddContactsToGroupEvent.onChangedKeyword(keyword: $keyword)';
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
    required TResult Function(Group group) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(ContactRequest contact) onSelectedContact,
    required TResult Function(ContactRequest contact) onRemovedContact,
    required TResult Function() onAddContactsToGroup,
  }) {
    return onChangedKeyword(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(ContactRequest contact)? onSelectedContact,
    TResult? Function(ContactRequest contact)? onRemovedContact,
    TResult? Function()? onAddContactsToGroup,
  }) {
    return onChangedKeyword?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(ContactRequest contact)? onSelectedContact,
    TResult Function(ContactRequest contact)? onRemovedContact,
    TResult Function()? onAddContactsToGroup,
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
    required TResult Function(_OnSelectedContact value) onSelectedContact,
    required TResult Function(_OnRemovedContact value) onRemovedContact,
    required TResult Function(_OnAddContactsToGroup value) onAddContactsToGroup,
  }) {
    return onChangedKeyword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnSelectedContact value)? onSelectedContact,
    TResult? Function(_OnRemovedContact value)? onRemovedContact,
    TResult? Function(_OnAddContactsToGroup value)? onAddContactsToGroup,
  }) {
    return onChangedKeyword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnSelectedContact value)? onSelectedContact,
    TResult Function(_OnRemovedContact value)? onRemovedContact,
    TResult Function(_OnAddContactsToGroup value)? onAddContactsToGroup,
    required TResult orElse(),
  }) {
    if (onChangedKeyword != null) {
      return onChangedKeyword(this);
    }
    return orElse();
  }
}

abstract class _OnChangedKeyword implements AddContactsToGroupEvent {
  const factory _OnChangedKeyword(final String keyword) =
      _$OnChangedKeywordImpl;

  String get keyword;
  @JsonKey(ignore: true)
  _$$OnChangedKeywordImplCopyWith<_$OnChangedKeywordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSelectedContactImplCopyWith<$Res> {
  factory _$$OnSelectedContactImplCopyWith(_$OnSelectedContactImpl value,
          $Res Function(_$OnSelectedContactImpl) then) =
      __$$OnSelectedContactImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ContactRequest contact});

  $ContactRequestCopyWith<$Res> get contact;
}

/// @nodoc
class __$$OnSelectedContactImplCopyWithImpl<$Res>
    extends _$AddContactsToGroupEventCopyWithImpl<$Res, _$OnSelectedContactImpl>
    implements _$$OnSelectedContactImplCopyWith<$Res> {
  __$$OnSelectedContactImplCopyWithImpl(_$OnSelectedContactImpl _value,
      $Res Function(_$OnSelectedContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$OnSelectedContactImpl(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactRequestCopyWith<$Res> get contact {
    return $ContactRequestCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc

class _$OnSelectedContactImpl implements _OnSelectedContact {
  const _$OnSelectedContactImpl(this.contact);

  @override
  final ContactRequest contact;

  @override
  String toString() {
    return 'AddContactsToGroupEvent.onSelectedContact(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSelectedContactImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSelectedContactImplCopyWith<_$OnSelectedContactImpl> get copyWith =>
      __$$OnSelectedContactImplCopyWithImpl<_$OnSelectedContactImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Group group) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(ContactRequest contact) onSelectedContact,
    required TResult Function(ContactRequest contact) onRemovedContact,
    required TResult Function() onAddContactsToGroup,
  }) {
    return onSelectedContact(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(ContactRequest contact)? onSelectedContact,
    TResult? Function(ContactRequest contact)? onRemovedContact,
    TResult? Function()? onAddContactsToGroup,
  }) {
    return onSelectedContact?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(ContactRequest contact)? onSelectedContact,
    TResult Function(ContactRequest contact)? onRemovedContact,
    TResult Function()? onAddContactsToGroup,
    required TResult orElse(),
  }) {
    if (onSelectedContact != null) {
      return onSelectedContact(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedKeyword value) onChangedKeyword,
    required TResult Function(_OnSelectedContact value) onSelectedContact,
    required TResult Function(_OnRemovedContact value) onRemovedContact,
    required TResult Function(_OnAddContactsToGroup value) onAddContactsToGroup,
  }) {
    return onSelectedContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnSelectedContact value)? onSelectedContact,
    TResult? Function(_OnRemovedContact value)? onRemovedContact,
    TResult? Function(_OnAddContactsToGroup value)? onAddContactsToGroup,
  }) {
    return onSelectedContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnSelectedContact value)? onSelectedContact,
    TResult Function(_OnRemovedContact value)? onRemovedContact,
    TResult Function(_OnAddContactsToGroup value)? onAddContactsToGroup,
    required TResult orElse(),
  }) {
    if (onSelectedContact != null) {
      return onSelectedContact(this);
    }
    return orElse();
  }
}

abstract class _OnSelectedContact implements AddContactsToGroupEvent {
  const factory _OnSelectedContact(final ContactRequest contact) =
      _$OnSelectedContactImpl;

  ContactRequest get contact;
  @JsonKey(ignore: true)
  _$$OnSelectedContactImplCopyWith<_$OnSelectedContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnRemovedContactImplCopyWith<$Res> {
  factory _$$OnRemovedContactImplCopyWith(_$OnRemovedContactImpl value,
          $Res Function(_$OnRemovedContactImpl) then) =
      __$$OnRemovedContactImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ContactRequest contact});

  $ContactRequestCopyWith<$Res> get contact;
}

/// @nodoc
class __$$OnRemovedContactImplCopyWithImpl<$Res>
    extends _$AddContactsToGroupEventCopyWithImpl<$Res, _$OnRemovedContactImpl>
    implements _$$OnRemovedContactImplCopyWith<$Res> {
  __$$OnRemovedContactImplCopyWithImpl(_$OnRemovedContactImpl _value,
      $Res Function(_$OnRemovedContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$OnRemovedContactImpl(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactRequestCopyWith<$Res> get contact {
    return $ContactRequestCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc

class _$OnRemovedContactImpl implements _OnRemovedContact {
  const _$OnRemovedContactImpl(this.contact);

  @override
  final ContactRequest contact;

  @override
  String toString() {
    return 'AddContactsToGroupEvent.onRemovedContact(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRemovedContactImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnRemovedContactImplCopyWith<_$OnRemovedContactImpl> get copyWith =>
      __$$OnRemovedContactImplCopyWithImpl<_$OnRemovedContactImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Group group) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(ContactRequest contact) onSelectedContact,
    required TResult Function(ContactRequest contact) onRemovedContact,
    required TResult Function() onAddContactsToGroup,
  }) {
    return onRemovedContact(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(ContactRequest contact)? onSelectedContact,
    TResult? Function(ContactRequest contact)? onRemovedContact,
    TResult? Function()? onAddContactsToGroup,
  }) {
    return onRemovedContact?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(ContactRequest contact)? onSelectedContact,
    TResult Function(ContactRequest contact)? onRemovedContact,
    TResult Function()? onAddContactsToGroup,
    required TResult orElse(),
  }) {
    if (onRemovedContact != null) {
      return onRemovedContact(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedKeyword value) onChangedKeyword,
    required TResult Function(_OnSelectedContact value) onSelectedContact,
    required TResult Function(_OnRemovedContact value) onRemovedContact,
    required TResult Function(_OnAddContactsToGroup value) onAddContactsToGroup,
  }) {
    return onRemovedContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnSelectedContact value)? onSelectedContact,
    TResult? Function(_OnRemovedContact value)? onRemovedContact,
    TResult? Function(_OnAddContactsToGroup value)? onAddContactsToGroup,
  }) {
    return onRemovedContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnSelectedContact value)? onSelectedContact,
    TResult Function(_OnRemovedContact value)? onRemovedContact,
    TResult Function(_OnAddContactsToGroup value)? onAddContactsToGroup,
    required TResult orElse(),
  }) {
    if (onRemovedContact != null) {
      return onRemovedContact(this);
    }
    return orElse();
  }
}

abstract class _OnRemovedContact implements AddContactsToGroupEvent {
  const factory _OnRemovedContact(final ContactRequest contact) =
      _$OnRemovedContactImpl;

  ContactRequest get contact;
  @JsonKey(ignore: true)
  _$$OnRemovedContactImplCopyWith<_$OnRemovedContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnAddContactsToGroupImplCopyWith<$Res> {
  factory _$$OnAddContactsToGroupImplCopyWith(_$OnAddContactsToGroupImpl value,
          $Res Function(_$OnAddContactsToGroupImpl) then) =
      __$$OnAddContactsToGroupImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnAddContactsToGroupImplCopyWithImpl<$Res>
    extends _$AddContactsToGroupEventCopyWithImpl<$Res,
        _$OnAddContactsToGroupImpl>
    implements _$$OnAddContactsToGroupImplCopyWith<$Res> {
  __$$OnAddContactsToGroupImplCopyWithImpl(_$OnAddContactsToGroupImpl _value,
      $Res Function(_$OnAddContactsToGroupImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnAddContactsToGroupImpl implements _OnAddContactsToGroup {
  const _$OnAddContactsToGroupImpl();

  @override
  String toString() {
    return 'AddContactsToGroupEvent.onAddContactsToGroup()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAddContactsToGroupImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Group group) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(ContactRequest contact) onSelectedContact,
    required TResult Function(ContactRequest contact) onRemovedContact,
    required TResult Function() onAddContactsToGroup,
  }) {
    return onAddContactsToGroup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(ContactRequest contact)? onSelectedContact,
    TResult? Function(ContactRequest contact)? onRemovedContact,
    TResult? Function()? onAddContactsToGroup,
  }) {
    return onAddContactsToGroup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(ContactRequest contact)? onSelectedContact,
    TResult Function(ContactRequest contact)? onRemovedContact,
    TResult Function()? onAddContactsToGroup,
    required TResult orElse(),
  }) {
    if (onAddContactsToGroup != null) {
      return onAddContactsToGroup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedKeyword value) onChangedKeyword,
    required TResult Function(_OnSelectedContact value) onSelectedContact,
    required TResult Function(_OnRemovedContact value) onRemovedContact,
    required TResult Function(_OnAddContactsToGroup value) onAddContactsToGroup,
  }) {
    return onAddContactsToGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnSelectedContact value)? onSelectedContact,
    TResult? Function(_OnRemovedContact value)? onRemovedContact,
    TResult? Function(_OnAddContactsToGroup value)? onAddContactsToGroup,
  }) {
    return onAddContactsToGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnSelectedContact value)? onSelectedContact,
    TResult Function(_OnRemovedContact value)? onRemovedContact,
    TResult Function(_OnAddContactsToGroup value)? onAddContactsToGroup,
    required TResult orElse(),
  }) {
    if (onAddContactsToGroup != null) {
      return onAddContactsToGroup(this);
    }
    return orElse();
  }
}

abstract class _OnAddContactsToGroup implements AddContactsToGroupEvent {
  const factory _OnAddContactsToGroup() = _$OnAddContactsToGroupImpl;
}

/// @nodoc
mixin _$AddContactsToGroupState {
  PageState get pageState => throw _privateConstructorUsedError;
  PageCommand? get pageCommand => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;
  List<ContactRequest> get contacts => throw _privateConstructorUsedError;
  List<ContactRequest> get selectedContacts =>
      throw _privateConstructorUsedError;
  Group? get group => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddContactsToGroupStateCopyWith<AddContactsToGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddContactsToGroupStateCopyWith<$Res> {
  factory $AddContactsToGroupStateCopyWith(AddContactsToGroupState value,
          $Res Function(AddContactsToGroupState) then) =
      _$AddContactsToGroupStateCopyWithImpl<$Res, AddContactsToGroupState>;
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? pageCommand,
      bool isLoading,
      String keyword,
      List<ContactRequest> contacts,
      List<ContactRequest> selectedContacts,
      Group? group});

  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class _$AddContactsToGroupStateCopyWithImpl<$Res,
        $Val extends AddContactsToGroupState>
    implements $AddContactsToGroupStateCopyWith<$Res> {
  _$AddContactsToGroupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? pageCommand = freezed,
    Object? isLoading = null,
    Object? keyword = null,
    Object? contacts = null,
    Object? selectedContacts = null,
    Object? group = freezed,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      pageCommand: freezed == pageCommand
          ? _value.pageCommand
          : pageCommand // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactRequest>,
      selectedContacts: null == selectedContacts
          ? _value.selectedContacts
          : selectedContacts // ignore: cast_nullable_to_non_nullable
              as List<ContactRequest>,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
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
abstract class _$$AddContactsToGroupStateImplCopyWith<$Res>
    implements $AddContactsToGroupStateCopyWith<$Res> {
  factory _$$AddContactsToGroupStateImplCopyWith(
          _$AddContactsToGroupStateImpl value,
          $Res Function(_$AddContactsToGroupStateImpl) then) =
      __$$AddContactsToGroupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? pageCommand,
      bool isLoading,
      String keyword,
      List<ContactRequest> contacts,
      List<ContactRequest> selectedContacts,
      Group? group});

  @override
  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class __$$AddContactsToGroupStateImplCopyWithImpl<$Res>
    extends _$AddContactsToGroupStateCopyWithImpl<$Res,
        _$AddContactsToGroupStateImpl>
    implements _$$AddContactsToGroupStateImplCopyWith<$Res> {
  __$$AddContactsToGroupStateImplCopyWithImpl(
      _$AddContactsToGroupStateImpl _value,
      $Res Function(_$AddContactsToGroupStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? pageCommand = freezed,
    Object? isLoading = null,
    Object? keyword = null,
    Object? contacts = null,
    Object? selectedContacts = null,
    Object? group = freezed,
  }) {
    return _then(_$AddContactsToGroupStateImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      pageCommand: freezed == pageCommand
          ? _value.pageCommand
          : pageCommand // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactRequest>,
      selectedContacts: null == selectedContacts
          ? _value._selectedContacts
          : selectedContacts // ignore: cast_nullable_to_non_nullable
              as List<ContactRequest>,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
    ));
  }
}

/// @nodoc

class _$AddContactsToGroupStateImpl extends _AddContactsToGroupState {
  const _$AddContactsToGroupStateImpl(
      {this.pageState = PageState.loading,
      this.pageCommand,
      this.isLoading = false,
      this.keyword = '',
      final List<ContactRequest> contacts = const [],
      final List<ContactRequest> selectedContacts = const [],
      this.group})
      : _contacts = contacts,
        _selectedContacts = selectedContacts,
        super._();

  @override
  @JsonKey()
  final PageState pageState;
  @override
  final PageCommand? pageCommand;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String keyword;
  final List<ContactRequest> _contacts;
  @override
  @JsonKey()
  List<ContactRequest> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  final List<ContactRequest> _selectedContacts;
  @override
  @JsonKey()
  List<ContactRequest> get selectedContacts {
    if (_selectedContacts is EqualUnmodifiableListView)
      return _selectedContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedContacts);
  }

  @override
  final Group? group;

  @override
  String toString() {
    return 'AddContactsToGroupState(pageState: $pageState, pageCommand: $pageCommand, isLoading: $isLoading, keyword: $keyword, contacts: $contacts, selectedContacts: $selectedContacts, group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddContactsToGroupStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.pageCommand, pageCommand) ||
                other.pageCommand == pageCommand) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            const DeepCollectionEquality()
                .equals(other._selectedContacts, _selectedContacts) &&
            const DeepCollectionEquality().equals(other.group, group));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pageState,
      pageCommand,
      isLoading,
      keyword,
      const DeepCollectionEquality().hash(_contacts),
      const DeepCollectionEquality().hash(_selectedContacts),
      const DeepCollectionEquality().hash(group));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddContactsToGroupStateImplCopyWith<_$AddContactsToGroupStateImpl>
      get copyWith => __$$AddContactsToGroupStateImplCopyWithImpl<
          _$AddContactsToGroupStateImpl>(this, _$identity);
}

abstract class _AddContactsToGroupState extends AddContactsToGroupState {
  const factory _AddContactsToGroupState(
      {final PageState pageState,
      final PageCommand? pageCommand,
      final bool isLoading,
      final String keyword,
      final List<ContactRequest> contacts,
      final List<ContactRequest> selectedContacts,
      final Group? group}) = _$AddContactsToGroupStateImpl;
  const _AddContactsToGroupState._() : super._();

  @override
  PageState get pageState;
  @override
  PageCommand? get pageCommand;
  @override
  bool get isLoading;
  @override
  String get keyword;
  @override
  List<ContactRequest> get contacts;
  @override
  List<ContactRequest> get selectedContacts;
  @override
  Group? get group;
  @override
  @JsonKey(ignore: true)
  _$$AddContactsToGroupStateImplCopyWith<_$AddContactsToGroupStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
