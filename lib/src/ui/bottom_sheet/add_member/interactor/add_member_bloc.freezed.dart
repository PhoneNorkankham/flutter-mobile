// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_member_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddMemberEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId, List<Contact> selectedContacts)
        initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(Contact contact) onSelectedContact,
    required TResult Function(Contact contact) onRemovedContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId, List<Contact> selectedContacts)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(Contact contact)? onSelectedContact,
    TResult? Function(Contact contact)? onRemovedContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId, List<Contact> selectedContacts)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(Contact contact)? onSelectedContact,
    TResult Function(Contact contact)? onRemovedContact,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnSelectedContact value)? onSelectedContact,
    TResult? Function(_OnRemovedContact value)? onRemovedContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnSelectedContact value)? onSelectedContact,
    TResult Function(_OnRemovedContact value)? onRemovedContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMemberEventCopyWith<$Res> {
  factory $AddMemberEventCopyWith(
          AddMemberEvent value, $Res Function(AddMemberEvent) then) =
      _$AddMemberEventCopyWithImpl<$Res, AddMemberEvent>;
}

/// @nodoc
class _$AddMemberEventCopyWithImpl<$Res, $Val extends AddMemberEvent>
    implements $AddMemberEventCopyWith<$Res> {
  _$AddMemberEventCopyWithImpl(this._value, this._then);

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
  $Res call({String groupId, List<Contact> selectedContacts});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AddMemberEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? selectedContacts = null,
  }) {
    return _then(_$_Initial(
      null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      null == selectedContacts
          ? _value._selectedContacts
          : selectedContacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.groupId, final List<Contact> selectedContacts)
      : _selectedContacts = selectedContacts;

  @override
  final String groupId;
  final List<Contact> _selectedContacts;
  @override
  List<Contact> get selectedContacts {
    if (_selectedContacts is EqualUnmodifiableListView)
      return _selectedContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedContacts);
  }

  @override
  String toString() {
    return 'AddMemberEvent.initial(groupId: $groupId, selectedContacts: $selectedContacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            const DeepCollectionEquality()
                .equals(other._selectedContacts, _selectedContacts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId,
      const DeepCollectionEquality().hash(_selectedContacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId, List<Contact> selectedContacts)
        initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(Contact contact) onSelectedContact,
    required TResult Function(Contact contact) onRemovedContact,
  }) {
    return initial(groupId, selectedContacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId, List<Contact> selectedContacts)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(Contact contact)? onSelectedContact,
    TResult? Function(Contact contact)? onRemovedContact,
  }) {
    return initial?.call(groupId, selectedContacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId, List<Contact> selectedContacts)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(Contact contact)? onSelectedContact,
    TResult Function(Contact contact)? onRemovedContact,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(groupId, selectedContacts);
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
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddMemberEvent {
  const factory _Initial(
      final String groupId, final List<Contact> selectedContacts) = _$_Initial;

  String get groupId;
  List<Contact> get selectedContacts;
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
    extends _$AddMemberEventCopyWithImpl<$Res, _$_ClearPageCommand>
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
    return 'AddMemberEvent.clearPageCommand()';
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
    required TResult Function(String groupId, List<Contact> selectedContacts)
        initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(Contact contact) onSelectedContact,
    required TResult Function(Contact contact) onRemovedContact,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId, List<Contact> selectedContacts)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(Contact contact)? onSelectedContact,
    TResult? Function(Contact contact)? onRemovedContact,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId, List<Contact> selectedContacts)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(Contact contact)? onSelectedContact,
    TResult Function(Contact contact)? onRemovedContact,
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
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements AddMemberEvent {
  const factory _ClearPageCommand() = _$_ClearPageCommand;
}

/// @nodoc
abstract class _$$_OnChangedKeywordCopyWith<$Res> {
  factory _$$_OnChangedKeywordCopyWith(
          _$_OnChangedKeyword value, $Res Function(_$_OnChangedKeyword) then) =
      __$$_OnChangedKeywordCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class __$$_OnChangedKeywordCopyWithImpl<$Res>
    extends _$AddMemberEventCopyWithImpl<$Res, _$_OnChangedKeyword>
    implements _$$_OnChangedKeywordCopyWith<$Res> {
  __$$_OnChangedKeywordCopyWithImpl(
      _$_OnChangedKeyword _value, $Res Function(_$_OnChangedKeyword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$_OnChangedKeyword(
      null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnChangedKeyword implements _OnChangedKeyword {
  const _$_OnChangedKeyword(this.keyword);

  @override
  final String keyword;

  @override
  String toString() {
    return 'AddMemberEvent.onChangedKeyword(keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnChangedKeyword &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnChangedKeywordCopyWith<_$_OnChangedKeyword> get copyWith =>
      __$$_OnChangedKeywordCopyWithImpl<_$_OnChangedKeyword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId, List<Contact> selectedContacts)
        initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(Contact contact) onSelectedContact,
    required TResult Function(Contact contact) onRemovedContact,
  }) {
    return onChangedKeyword(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId, List<Contact> selectedContacts)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(Contact contact)? onSelectedContact,
    TResult? Function(Contact contact)? onRemovedContact,
  }) {
    return onChangedKeyword?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId, List<Contact> selectedContacts)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(Contact contact)? onSelectedContact,
    TResult Function(Contact contact)? onRemovedContact,
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
    required TResult orElse(),
  }) {
    if (onChangedKeyword != null) {
      return onChangedKeyword(this);
    }
    return orElse();
  }
}

abstract class _OnChangedKeyword implements AddMemberEvent {
  const factory _OnChangedKeyword(final String keyword) = _$_OnChangedKeyword;

  String get keyword;
  @JsonKey(ignore: true)
  _$$_OnChangedKeywordCopyWith<_$_OnChangedKeyword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnSelectedContactCopyWith<$Res> {
  factory _$$_OnSelectedContactCopyWith(_$_OnSelectedContact value,
          $Res Function(_$_OnSelectedContact) then) =
      __$$_OnSelectedContactCopyWithImpl<$Res>;
  @useResult
  $Res call({Contact contact});
}

/// @nodoc
class __$$_OnSelectedContactCopyWithImpl<$Res>
    extends _$AddMemberEventCopyWithImpl<$Res, _$_OnSelectedContact>
    implements _$$_OnSelectedContactCopyWith<$Res> {
  __$$_OnSelectedContactCopyWithImpl(
      _$_OnSelectedContact _value, $Res Function(_$_OnSelectedContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
  }) {
    return _then(_$_OnSelectedContact(
      freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$_OnSelectedContact implements _OnSelectedContact {
  const _$_OnSelectedContact(this.contact);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'AddMemberEvent.onSelectedContact(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSelectedContact &&
            const DeepCollectionEquality().equals(other.contact, contact));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(contact));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSelectedContactCopyWith<_$_OnSelectedContact> get copyWith =>
      __$$_OnSelectedContactCopyWithImpl<_$_OnSelectedContact>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId, List<Contact> selectedContacts)
        initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(Contact contact) onSelectedContact,
    required TResult Function(Contact contact) onRemovedContact,
  }) {
    return onSelectedContact(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId, List<Contact> selectedContacts)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(Contact contact)? onSelectedContact,
    TResult? Function(Contact contact)? onRemovedContact,
  }) {
    return onSelectedContact?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId, List<Contact> selectedContacts)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(Contact contact)? onSelectedContact,
    TResult Function(Contact contact)? onRemovedContact,
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
    required TResult orElse(),
  }) {
    if (onSelectedContact != null) {
      return onSelectedContact(this);
    }
    return orElse();
  }
}

abstract class _OnSelectedContact implements AddMemberEvent {
  const factory _OnSelectedContact(final Contact contact) =
      _$_OnSelectedContact;

  Contact get contact;
  @JsonKey(ignore: true)
  _$$_OnSelectedContactCopyWith<_$_OnSelectedContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnRemovedContactCopyWith<$Res> {
  factory _$$_OnRemovedContactCopyWith(
          _$_OnRemovedContact value, $Res Function(_$_OnRemovedContact) then) =
      __$$_OnRemovedContactCopyWithImpl<$Res>;
  @useResult
  $Res call({Contact contact});
}

/// @nodoc
class __$$_OnRemovedContactCopyWithImpl<$Res>
    extends _$AddMemberEventCopyWithImpl<$Res, _$_OnRemovedContact>
    implements _$$_OnRemovedContactCopyWith<$Res> {
  __$$_OnRemovedContactCopyWithImpl(
      _$_OnRemovedContact _value, $Res Function(_$_OnRemovedContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
  }) {
    return _then(_$_OnRemovedContact(
      freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$_OnRemovedContact implements _OnRemovedContact {
  const _$_OnRemovedContact(this.contact);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'AddMemberEvent.onRemovedContact(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnRemovedContact &&
            const DeepCollectionEquality().equals(other.contact, contact));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(contact));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnRemovedContactCopyWith<_$_OnRemovedContact> get copyWith =>
      __$$_OnRemovedContactCopyWithImpl<_$_OnRemovedContact>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId, List<Contact> selectedContacts)
        initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(Contact contact) onSelectedContact,
    required TResult Function(Contact contact) onRemovedContact,
  }) {
    return onRemovedContact(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId, List<Contact> selectedContacts)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(Contact contact)? onSelectedContact,
    TResult? Function(Contact contact)? onRemovedContact,
  }) {
    return onRemovedContact?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId, List<Contact> selectedContacts)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(Contact contact)? onSelectedContact,
    TResult Function(Contact contact)? onRemovedContact,
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
    required TResult orElse(),
  }) {
    if (onRemovedContact != null) {
      return onRemovedContact(this);
    }
    return orElse();
  }
}

abstract class _OnRemovedContact implements AddMemberEvent {
  const factory _OnRemovedContact(final Contact contact) = _$_OnRemovedContact;

  Contact get contact;
  @JsonKey(ignore: true)
  _$$_OnRemovedContactCopyWith<_$_OnRemovedContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddMemberState {
  PageCommand? get pageCommand => throw _privateConstructorUsedError;
  PageState get pageState => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  List<Contact> get contacts => throw _privateConstructorUsedError;
  List<Contact> get selectedContacts => throw _privateConstructorUsedError;
  File? get avatar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddMemberStateCopyWith<AddMemberState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMemberStateCopyWith<$Res> {
  factory $AddMemberStateCopyWith(
          AddMemberState value, $Res Function(AddMemberState) then) =
      _$AddMemberStateCopyWithImpl<$Res, AddMemberState>;
  @useResult
  $Res call(
      {PageCommand? pageCommand,
      PageState pageState,
      bool isLoading,
      String keyword,
      String groupId,
      List<Contact> contacts,
      List<Contact> selectedContacts,
      File? avatar});

  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class _$AddMemberStateCopyWithImpl<$Res, $Val extends AddMemberState>
    implements $AddMemberStateCopyWith<$Res> {
  _$AddMemberStateCopyWithImpl(this._value, this._then);

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
    Object? groupId = null,
    Object? contacts = null,
    Object? selectedContacts = null,
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
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      selectedContacts: null == selectedContacts
          ? _value.selectedContacts
          : selectedContacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
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
abstract class _$$_AddMemberStateCopyWith<$Res>
    implements $AddMemberStateCopyWith<$Res> {
  factory _$$_AddMemberStateCopyWith(
          _$_AddMemberState value, $Res Function(_$_AddMemberState) then) =
      __$$_AddMemberStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageCommand? pageCommand,
      PageState pageState,
      bool isLoading,
      String keyword,
      String groupId,
      List<Contact> contacts,
      List<Contact> selectedContacts,
      File? avatar});

  @override
  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class __$$_AddMemberStateCopyWithImpl<$Res>
    extends _$AddMemberStateCopyWithImpl<$Res, _$_AddMemberState>
    implements _$$_AddMemberStateCopyWith<$Res> {
  __$$_AddMemberStateCopyWithImpl(
      _$_AddMemberState _value, $Res Function(_$_AddMemberState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageCommand = freezed,
    Object? pageState = null,
    Object? isLoading = null,
    Object? keyword = null,
    Object? groupId = null,
    Object? contacts = null,
    Object? selectedContacts = null,
    Object? avatar = freezed,
  }) {
    return _then(_$_AddMemberState(
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
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      selectedContacts: null == selectedContacts
          ? _value._selectedContacts
          : selectedContacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_AddMemberState extends _AddMemberState {
  const _$_AddMemberState(
      {this.pageCommand,
      this.pageState = PageState.loading,
      this.isLoading = false,
      this.keyword = '',
      this.groupId = '',
      final List<Contact> contacts = const [],
      final List<Contact> selectedContacts = const [],
      this.avatar})
      : _contacts = contacts,
        _selectedContacts = selectedContacts,
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
  @override
  @JsonKey()
  final String groupId;
  final List<Contact> _contacts;
  @override
  @JsonKey()
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  final List<Contact> _selectedContacts;
  @override
  @JsonKey()
  List<Contact> get selectedContacts {
    if (_selectedContacts is EqualUnmodifiableListView)
      return _selectedContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedContacts);
  }

  @override
  final File? avatar;

  @override
  String toString() {
    return 'AddMemberState(pageCommand: $pageCommand, pageState: $pageState, isLoading: $isLoading, keyword: $keyword, groupId: $groupId, contacts: $contacts, selectedContacts: $selectedContacts, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddMemberState &&
            (identical(other.pageCommand, pageCommand) ||
                other.pageCommand == pageCommand) &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            const DeepCollectionEquality()
                .equals(other._selectedContacts, _selectedContacts) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pageCommand,
      pageState,
      isLoading,
      keyword,
      groupId,
      const DeepCollectionEquality().hash(_contacts),
      const DeepCollectionEquality().hash(_selectedContacts),
      avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddMemberStateCopyWith<_$_AddMemberState> get copyWith =>
      __$$_AddMemberStateCopyWithImpl<_$_AddMemberState>(this, _$identity);
}

abstract class _AddMemberState extends AddMemberState {
  const factory _AddMemberState(
      {final PageCommand? pageCommand,
      final PageState pageState,
      final bool isLoading,
      final String keyword,
      final String groupId,
      final List<Contact> contacts,
      final List<Contact> selectedContacts,
      final File? avatar}) = _$_AddMemberState;
  const _AddMemberState._() : super._();

  @override
  PageCommand? get pageCommand;
  @override
  PageState get pageState;
  @override
  bool get isLoading;
  @override
  String get keyword;
  @override
  String get groupId;
  @override
  List<Contact> get contacts;
  @override
  List<Contact> get selectedContacts;
  @override
  File? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_AddMemberStateCopyWith<_$_AddMemberState> get copyWith =>
      throw _privateConstructorUsedError;
}
