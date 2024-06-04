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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddContactsToGroupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Group? group, List<ContactRequest> selectedContacts)
        initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(ContactRequest contact) onSelectedContact,
    required TResult Function(ContactRequest contact) onRemovedContact,
    required TResult Function() onAddContactsToGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group? group, List<ContactRequest> selectedContacts)?
        initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(ContactRequest contact)? onSelectedContact,
    TResult? Function(ContactRequest contact)? onRemovedContact,
    TResult? Function()? onAddContactsToGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group? group, List<ContactRequest> selectedContacts)?
        initial,
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
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @useResult
  $Res call({Group? group, List<ContactRequest> selectedContacts});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AddContactsToGroupEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = freezed,
    Object? selectedContacts = null,
  }) {
    return _then(_$_Initial(
      freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      null == selectedContacts
          ? _value._selectedContacts
          : selectedContacts // ignore: cast_nullable_to_non_nullable
              as List<ContactRequest>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.group, final List<ContactRequest> selectedContacts)
      : _selectedContacts = selectedContacts;

  @override
  final Group? group;
  final List<ContactRequest> _selectedContacts;
  @override
  List<ContactRequest> get selectedContacts {
    if (_selectedContacts is EqualUnmodifiableListView)
      return _selectedContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedContacts);
  }

  @override
  String toString() {
    return 'AddContactsToGroupEvent.initial(group: $group, selectedContacts: $selectedContacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.group, group) &&
            const DeepCollectionEquality()
                .equals(other._selectedContacts, _selectedContacts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(group),
      const DeepCollectionEquality().hash(_selectedContacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Group? group, List<ContactRequest> selectedContacts)
        initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(ContactRequest contact) onSelectedContact,
    required TResult Function(ContactRequest contact) onRemovedContact,
    required TResult Function() onAddContactsToGroup,
  }) {
    return initial(group, selectedContacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group? group, List<ContactRequest> selectedContacts)?
        initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(ContactRequest contact)? onSelectedContact,
    TResult? Function(ContactRequest contact)? onRemovedContact,
    TResult? Function()? onAddContactsToGroup,
  }) {
    return initial?.call(group, selectedContacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group? group, List<ContactRequest> selectedContacts)?
        initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(ContactRequest contact)? onSelectedContact,
    TResult Function(ContactRequest contact)? onRemovedContact,
    TResult Function()? onAddContactsToGroup,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(group, selectedContacts);
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
  const factory _Initial(
          final Group? group, final List<ContactRequest> selectedContacts) =
      _$_Initial;

  Group? get group;
  List<ContactRequest> get selectedContacts;
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
    extends _$AddContactsToGroupEventCopyWithImpl<$Res, _$_ClearPageCommand>
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
    return 'AddContactsToGroupEvent.clearPageCommand()';
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
    required TResult Function(
            Group? group, List<ContactRequest> selectedContacts)
        initial,
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
    TResult? Function(Group? group, List<ContactRequest> selectedContacts)?
        initial,
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
    TResult Function(Group? group, List<ContactRequest> selectedContacts)?
        initial,
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
    extends _$AddContactsToGroupEventCopyWithImpl<$Res, _$_OnChangedKeyword>
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
    return 'AddContactsToGroupEvent.onChangedKeyword(keyword: $keyword)';
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
    required TResult Function(
            Group? group, List<ContactRequest> selectedContacts)
        initial,
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
    TResult? Function(Group? group, List<ContactRequest> selectedContacts)?
        initial,
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
    TResult Function(Group? group, List<ContactRequest> selectedContacts)?
        initial,
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
  $Res call({ContactRequest contact});

  $ContactRequestCopyWith<$Res> get contact;
}

/// @nodoc
class __$$_OnSelectedContactCopyWithImpl<$Res>
    extends _$AddContactsToGroupEventCopyWithImpl<$Res, _$_OnSelectedContact>
    implements _$$_OnSelectedContactCopyWith<$Res> {
  __$$_OnSelectedContactCopyWithImpl(
      _$_OnSelectedContact _value, $Res Function(_$_OnSelectedContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$_OnSelectedContact(
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

class _$_OnSelectedContact implements _OnSelectedContact {
  const _$_OnSelectedContact(this.contact);

  @override
  final ContactRequest contact;

  @override
  String toString() {
    return 'AddContactsToGroupEvent.onSelectedContact(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSelectedContact &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSelectedContactCopyWith<_$_OnSelectedContact> get copyWith =>
      __$$_OnSelectedContactCopyWithImpl<_$_OnSelectedContact>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Group? group, List<ContactRequest> selectedContacts)
        initial,
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
    TResult? Function(Group? group, List<ContactRequest> selectedContacts)?
        initial,
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
    TResult Function(Group? group, List<ContactRequest> selectedContacts)?
        initial,
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
      _$_OnSelectedContact;

  ContactRequest get contact;
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
  $Res call({ContactRequest contact});

  $ContactRequestCopyWith<$Res> get contact;
}

/// @nodoc
class __$$_OnRemovedContactCopyWithImpl<$Res>
    extends _$AddContactsToGroupEventCopyWithImpl<$Res, _$_OnRemovedContact>
    implements _$$_OnRemovedContactCopyWith<$Res> {
  __$$_OnRemovedContactCopyWithImpl(
      _$_OnRemovedContact _value, $Res Function(_$_OnRemovedContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$_OnRemovedContact(
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

class _$_OnRemovedContact implements _OnRemovedContact {
  const _$_OnRemovedContact(this.contact);

  @override
  final ContactRequest contact;

  @override
  String toString() {
    return 'AddContactsToGroupEvent.onRemovedContact(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnRemovedContact &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnRemovedContactCopyWith<_$_OnRemovedContact> get copyWith =>
      __$$_OnRemovedContactCopyWithImpl<_$_OnRemovedContact>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Group? group, List<ContactRequest> selectedContacts)
        initial,
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
    TResult? Function(Group? group, List<ContactRequest> selectedContacts)?
        initial,
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
    TResult Function(Group? group, List<ContactRequest> selectedContacts)?
        initial,
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
      _$_OnRemovedContact;

  ContactRequest get contact;
  @JsonKey(ignore: true)
  _$$_OnRemovedContactCopyWith<_$_OnRemovedContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnAddContactsToGroupCopyWith<$Res> {
  factory _$$_OnAddContactsToGroupCopyWith(_$_OnAddContactsToGroup value,
          $Res Function(_$_OnAddContactsToGroup) then) =
      __$$_OnAddContactsToGroupCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnAddContactsToGroupCopyWithImpl<$Res>
    extends _$AddContactsToGroupEventCopyWithImpl<$Res, _$_OnAddContactsToGroup>
    implements _$$_OnAddContactsToGroupCopyWith<$Res> {
  __$$_OnAddContactsToGroupCopyWithImpl(_$_OnAddContactsToGroup _value,
      $Res Function(_$_OnAddContactsToGroup) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnAddContactsToGroup implements _OnAddContactsToGroup {
  const _$_OnAddContactsToGroup();

  @override
  String toString() {
    return 'AddContactsToGroupEvent.onAddContactsToGroup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnAddContactsToGroup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Group? group, List<ContactRequest> selectedContacts)
        initial,
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
    TResult? Function(Group? group, List<ContactRequest> selectedContacts)?
        initial,
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
    TResult Function(Group? group, List<ContactRequest> selectedContacts)?
        initial,
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
  const factory _OnAddContactsToGroup() = _$_OnAddContactsToGroup;
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
abstract class _$$_AddContactsToGroupStateCopyWith<$Res>
    implements $AddContactsToGroupStateCopyWith<$Res> {
  factory _$$_AddContactsToGroupStateCopyWith(_$_AddContactsToGroupState value,
          $Res Function(_$_AddContactsToGroupState) then) =
      __$$_AddContactsToGroupStateCopyWithImpl<$Res>;
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
class __$$_AddContactsToGroupStateCopyWithImpl<$Res>
    extends _$AddContactsToGroupStateCopyWithImpl<$Res,
        _$_AddContactsToGroupState>
    implements _$$_AddContactsToGroupStateCopyWith<$Res> {
  __$$_AddContactsToGroupStateCopyWithImpl(_$_AddContactsToGroupState _value,
      $Res Function(_$_AddContactsToGroupState) _then)
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
    return _then(_$_AddContactsToGroupState(
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

class _$_AddContactsToGroupState extends _AddContactsToGroupState {
  const _$_AddContactsToGroupState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddContactsToGroupState &&
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
  _$$_AddContactsToGroupStateCopyWith<_$_AddContactsToGroupState>
      get copyWith =>
          __$$_AddContactsToGroupStateCopyWithImpl<_$_AddContactsToGroupState>(
              this, _$identity);
}

abstract class _AddContactsToGroupState extends AddContactsToGroupState {
  const factory _AddContactsToGroupState(
      {final PageState pageState,
      final PageCommand? pageCommand,
      final bool isLoading,
      final String keyword,
      final List<ContactRequest> contacts,
      final List<ContactRequest> selectedContacts,
      final Group? group}) = _$_AddContactsToGroupState;
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
  _$$_AddContactsToGroupStateCopyWith<_$_AddContactsToGroupState>
      get copyWith => throw _privateConstructorUsedError;
}
