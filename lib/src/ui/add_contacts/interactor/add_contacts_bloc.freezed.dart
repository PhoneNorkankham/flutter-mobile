// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_contacts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddContactsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(AddContactRequest contact) onChangedContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(AddContactRequest contact)? onChangedContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(AddContactRequest contact)? onChangedContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedKeyword value) onChangedKeyword,
    required TResult Function(_OnChangedContact value) onChangedContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnChangedContact value)? onChangedContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnChangedContact value)? onChangedContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddContactsEventCopyWith<$Res> {
  factory $AddContactsEventCopyWith(
          AddContactsEvent value, $Res Function(AddContactsEvent) then) =
      _$AddContactsEventCopyWithImpl<$Res, AddContactsEvent>;
}

/// @nodoc
class _$AddContactsEventCopyWithImpl<$Res, $Val extends AddContactsEvent>
    implements $AddContactsEventCopyWith<$Res> {
  _$AddContactsEventCopyWithImpl(this._value, this._then);

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
    extends _$AddContactsEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AddContactsEvent.initial()';
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
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(AddContactRequest contact) onChangedContact,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(AddContactRequest contact)? onChangedContact,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(AddContactRequest contact)? onChangedContact,
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
    required TResult Function(_OnChangedContact value) onChangedContact,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnChangedContact value)? onChangedContact,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnChangedContact value)? onChangedContact,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddContactsEvent {
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
    extends _$AddContactsEventCopyWithImpl<$Res, _$_ClearPageCommand>
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
    return 'AddContactsEvent.clearPageCommand()';
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
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(AddContactRequest contact) onChangedContact,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(AddContactRequest contact)? onChangedContact,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(AddContactRequest contact)? onChangedContact,
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
    required TResult Function(_OnChangedContact value) onChangedContact,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnChangedContact value)? onChangedContact,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnChangedContact value)? onChangedContact,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements AddContactsEvent {
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
    extends _$AddContactsEventCopyWithImpl<$Res, _$_OnChangedKeyword>
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
    return 'AddContactsEvent.onChangedKeyword(keyword: $keyword)';
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
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(AddContactRequest contact) onChangedContact,
  }) {
    return onChangedKeyword(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(AddContactRequest contact)? onChangedContact,
  }) {
    return onChangedKeyword?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(AddContactRequest contact)? onChangedContact,
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
    required TResult Function(_OnChangedContact value) onChangedContact,
  }) {
    return onChangedKeyword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnChangedContact value)? onChangedContact,
  }) {
    return onChangedKeyword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnChangedContact value)? onChangedContact,
    required TResult orElse(),
  }) {
    if (onChangedKeyword != null) {
      return onChangedKeyword(this);
    }
    return orElse();
  }
}

abstract class _OnChangedKeyword implements AddContactsEvent {
  const factory _OnChangedKeyword(final String keyword) = _$_OnChangedKeyword;

  String get keyword;
  @JsonKey(ignore: true)
  _$$_OnChangedKeywordCopyWith<_$_OnChangedKeyword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnChangedContactCopyWith<$Res> {
  factory _$$_OnChangedContactCopyWith(
          _$_OnChangedContact value, $Res Function(_$_OnChangedContact) then) =
      __$$_OnChangedContactCopyWithImpl<$Res>;
  @useResult
  $Res call({AddContactRequest contact});

  $AddContactRequestCopyWith<$Res> get contact;
}

/// @nodoc
class __$$_OnChangedContactCopyWithImpl<$Res>
    extends _$AddContactsEventCopyWithImpl<$Res, _$_OnChangedContact>
    implements _$$_OnChangedContactCopyWith<$Res> {
  __$$_OnChangedContactCopyWithImpl(
      _$_OnChangedContact _value, $Res Function(_$_OnChangedContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$_OnChangedContact(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as AddContactRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddContactRequestCopyWith<$Res> get contact {
    return $AddContactRequestCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc

class _$_OnChangedContact implements _OnChangedContact {
  const _$_OnChangedContact(this.contact);

  @override
  final AddContactRequest contact;

  @override
  String toString() {
    return 'AddContactsEvent.onChangedContact(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnChangedContact &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnChangedContactCopyWith<_$_OnChangedContact> get copyWith =>
      __$$_OnChangedContactCopyWithImpl<_$_OnChangedContact>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(AddContactRequest contact) onChangedContact,
  }) {
    return onChangedContact(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(AddContactRequest contact)? onChangedContact,
  }) {
    return onChangedContact?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(AddContactRequest contact)? onChangedContact,
    required TResult orElse(),
  }) {
    if (onChangedContact != null) {
      return onChangedContact(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnChangedKeyword value) onChangedKeyword,
    required TResult Function(_OnChangedContact value) onChangedContact,
  }) {
    return onChangedContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult? Function(_OnChangedContact value)? onChangedContact,
  }) {
    return onChangedContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnChangedKeyword value)? onChangedKeyword,
    TResult Function(_OnChangedContact value)? onChangedContact,
    required TResult orElse(),
  }) {
    if (onChangedContact != null) {
      return onChangedContact(this);
    }
    return orElse();
  }
}

abstract class _OnChangedContact implements AddContactsEvent {
  const factory _OnChangedContact(final AddContactRequest contact) =
      _$_OnChangedContact;

  AddContactRequest get contact;
  @JsonKey(ignore: true)
  _$$_OnChangedContactCopyWith<_$_OnChangedContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddContactsState {
  PageState get pageState => throw _privateConstructorUsedError;
  PageCommand? get pageCommand => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;
  List<AddContactRequest> get contacts => throw _privateConstructorUsedError;
  List<AddContactRequest> get filterContacts =>
      throw _privateConstructorUsedError;
  List<Group> get groups => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddContactsStateCopyWith<AddContactsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddContactsStateCopyWith<$Res> {
  factory $AddContactsStateCopyWith(
          AddContactsState value, $Res Function(AddContactsState) then) =
      _$AddContactsStateCopyWithImpl<$Res, AddContactsState>;
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? pageCommand,
      bool isLoading,
      String keyword,
      List<AddContactRequest> contacts,
      List<AddContactRequest> filterContacts,
      List<Group> groups});

  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class _$AddContactsStateCopyWithImpl<$Res, $Val extends AddContactsState>
    implements $AddContactsStateCopyWith<$Res> {
  _$AddContactsStateCopyWithImpl(this._value, this._then);

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
    Object? filterContacts = null,
    Object? groups = null,
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
              as List<AddContactRequest>,
      filterContacts: null == filterContacts
          ? _value.filterContacts
          : filterContacts // ignore: cast_nullable_to_non_nullable
              as List<AddContactRequest>,
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
abstract class _$$_AddContactsStateCopyWith<$Res>
    implements $AddContactsStateCopyWith<$Res> {
  factory _$$_AddContactsStateCopyWith(
          _$_AddContactsState value, $Res Function(_$_AddContactsState) then) =
      __$$_AddContactsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? pageCommand,
      bool isLoading,
      String keyword,
      List<AddContactRequest> contacts,
      List<AddContactRequest> filterContacts,
      List<Group> groups});

  @override
  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class __$$_AddContactsStateCopyWithImpl<$Res>
    extends _$AddContactsStateCopyWithImpl<$Res, _$_AddContactsState>
    implements _$$_AddContactsStateCopyWith<$Res> {
  __$$_AddContactsStateCopyWithImpl(
      _$_AddContactsState _value, $Res Function(_$_AddContactsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? pageCommand = freezed,
    Object? isLoading = null,
    Object? keyword = null,
    Object? contacts = null,
    Object? filterContacts = null,
    Object? groups = null,
  }) {
    return _then(_$_AddContactsState(
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
              as List<AddContactRequest>,
      filterContacts: null == filterContacts
          ? _value._filterContacts
          : filterContacts // ignore: cast_nullable_to_non_nullable
              as List<AddContactRequest>,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc

class _$_AddContactsState extends _AddContactsState {
  const _$_AddContactsState(
      {this.pageState = PageState.loading,
      this.pageCommand,
      this.isLoading = false,
      this.keyword = '',
      final List<AddContactRequest> contacts = const [],
      final List<AddContactRequest> filterContacts = const [],
      final List<Group> groups = const []})
      : _contacts = contacts,
        _filterContacts = filterContacts,
        _groups = groups,
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
  final List<AddContactRequest> _contacts;
  @override
  @JsonKey()
  List<AddContactRequest> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  final List<AddContactRequest> _filterContacts;
  @override
  @JsonKey()
  List<AddContactRequest> get filterContacts {
    if (_filterContacts is EqualUnmodifiableListView) return _filterContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filterContacts);
  }

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
    return 'AddContactsState(pageState: $pageState, pageCommand: $pageCommand, isLoading: $isLoading, keyword: $keyword, contacts: $contacts, filterContacts: $filterContacts, groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddContactsState &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.pageCommand, pageCommand) ||
                other.pageCommand == pageCommand) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            const DeepCollectionEquality()
                .equals(other._filterContacts, _filterContacts) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pageState,
      pageCommand,
      isLoading,
      keyword,
      const DeepCollectionEquality().hash(_contacts),
      const DeepCollectionEquality().hash(_filterContacts),
      const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddContactsStateCopyWith<_$_AddContactsState> get copyWith =>
      __$$_AddContactsStateCopyWithImpl<_$_AddContactsState>(this, _$identity);
}

abstract class _AddContactsState extends AddContactsState {
  const factory _AddContactsState(
      {final PageState pageState,
      final PageCommand? pageCommand,
      final bool isLoading,
      final String keyword,
      final List<AddContactRequest> contacts,
      final List<AddContactRequest> filterContacts,
      final List<Group> groups}) = _$_AddContactsState;
  const _AddContactsState._() : super._();

  @override
  PageState get pageState;
  @override
  PageCommand? get pageCommand;
  @override
  bool get isLoading;
  @override
  String get keyword;
  @override
  List<AddContactRequest> get contacts;
  @override
  List<AddContactRequest> get filterContacts;
  @override
  List<Group> get groups;
  @override
  @JsonKey(ignore: true)
  _$$_AddContactsStateCopyWith<_$_AddContactsState> get copyWith =>
      throw _privateConstructorUsedError;
}
