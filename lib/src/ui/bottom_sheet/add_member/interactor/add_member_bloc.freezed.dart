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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddMemberEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String groupId, List<ContactRequest> selectedContacts)
        initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(ContactRequest contact) onSelectedContact,
    required TResult Function(ContactRequest contact) onRemovedContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId, List<ContactRequest> selectedContacts)?
        initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(ContactRequest contact)? onSelectedContact,
    TResult? Function(ContactRequest contact)? onRemovedContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId, List<ContactRequest> selectedContacts)?
        initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(ContactRequest contact)? onSelectedContact,
    TResult Function(ContactRequest contact)? onRemovedContact,
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String groupId, List<ContactRequest> selectedContacts});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AddMemberEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? selectedContacts = null,
  }) {
    return _then(_$InitialImpl(
      null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      null == selectedContacts
          ? _value._selectedContacts
          : selectedContacts // ignore: cast_nullable_to_non_nullable
              as List<ContactRequest>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.groupId, final List<ContactRequest> selectedContacts)
      : _selectedContacts = selectedContacts;

  @override
  final String groupId;
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
    return 'AddMemberEvent.initial(groupId: $groupId, selectedContacts: $selectedContacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
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
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String groupId, List<ContactRequest> selectedContacts)
        initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(ContactRequest contact) onSelectedContact,
    required TResult Function(ContactRequest contact) onRemovedContact,
  }) {
    return initial(groupId, selectedContacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId, List<ContactRequest> selectedContacts)?
        initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(ContactRequest contact)? onSelectedContact,
    TResult? Function(ContactRequest contact)? onRemovedContact,
  }) {
    return initial?.call(groupId, selectedContacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId, List<ContactRequest> selectedContacts)?
        initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(ContactRequest contact)? onSelectedContact,
    TResult Function(ContactRequest contact)? onRemovedContact,
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
          final String groupId, final List<ContactRequest> selectedContacts) =
      _$InitialImpl;

  String get groupId;
  List<ContactRequest> get selectedContacts;
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
    extends _$AddMemberEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
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
    return 'AddMemberEvent.clearPageCommand()';
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
    required TResult Function(
            String groupId, List<ContactRequest> selectedContacts)
        initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(ContactRequest contact) onSelectedContact,
    required TResult Function(ContactRequest contact) onRemovedContact,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId, List<ContactRequest> selectedContacts)?
        initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(ContactRequest contact)? onSelectedContact,
    TResult? Function(ContactRequest contact)? onRemovedContact,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId, List<ContactRequest> selectedContacts)?
        initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(ContactRequest contact)? onSelectedContact,
    TResult Function(ContactRequest contact)? onRemovedContact,
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
    extends _$AddMemberEventCopyWithImpl<$Res, _$OnChangedKeywordImpl>
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
    return 'AddMemberEvent.onChangedKeyword(keyword: $keyword)';
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
    required TResult Function(
            String groupId, List<ContactRequest> selectedContacts)
        initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(ContactRequest contact) onSelectedContact,
    required TResult Function(ContactRequest contact) onRemovedContact,
  }) {
    return onChangedKeyword(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId, List<ContactRequest> selectedContacts)?
        initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(ContactRequest contact)? onSelectedContact,
    TResult? Function(ContactRequest contact)? onRemovedContact,
  }) {
    return onChangedKeyword?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId, List<ContactRequest> selectedContacts)?
        initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(ContactRequest contact)? onSelectedContact,
    TResult Function(ContactRequest contact)? onRemovedContact,
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
    extends _$AddMemberEventCopyWithImpl<$Res, _$OnSelectedContactImpl>
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
    return 'AddMemberEvent.onSelectedContact(contact: $contact)';
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
    required TResult Function(
            String groupId, List<ContactRequest> selectedContacts)
        initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(ContactRequest contact) onSelectedContact,
    required TResult Function(ContactRequest contact) onRemovedContact,
  }) {
    return onSelectedContact(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId, List<ContactRequest> selectedContacts)?
        initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(ContactRequest contact)? onSelectedContact,
    TResult? Function(ContactRequest contact)? onRemovedContact,
  }) {
    return onSelectedContact?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId, List<ContactRequest> selectedContacts)?
        initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(ContactRequest contact)? onSelectedContact,
    TResult Function(ContactRequest contact)? onRemovedContact,
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
    extends _$AddMemberEventCopyWithImpl<$Res, _$OnRemovedContactImpl>
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
    return 'AddMemberEvent.onRemovedContact(contact: $contact)';
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
    required TResult Function(
            String groupId, List<ContactRequest> selectedContacts)
        initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String keyword) onChangedKeyword,
    required TResult Function(ContactRequest contact) onSelectedContact,
    required TResult Function(ContactRequest contact) onRemovedContact,
  }) {
    return onRemovedContact(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId, List<ContactRequest> selectedContacts)?
        initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String keyword)? onChangedKeyword,
    TResult? Function(ContactRequest contact)? onSelectedContact,
    TResult? Function(ContactRequest contact)? onRemovedContact,
  }) {
    return onRemovedContact?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId, List<ContactRequest> selectedContacts)?
        initial,
    TResult Function()? clearPageCommand,
    TResult Function(String keyword)? onChangedKeyword,
    TResult Function(ContactRequest contact)? onSelectedContact,
    TResult Function(ContactRequest contact)? onRemovedContact,
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
  const factory _OnRemovedContact(final ContactRequest contact) =
      _$OnRemovedContactImpl;

  ContactRequest get contact;
  @JsonKey(ignore: true)
  _$$OnRemovedContactImplCopyWith<_$OnRemovedContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddMemberState {
  PageCommand? get pageCommand => throw _privateConstructorUsedError;
  PageState get pageState => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  List<ContactRequest> get contacts => throw _privateConstructorUsedError;
  List<ContactRequest> get selectedContacts =>
      throw _privateConstructorUsedError;
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
      List<ContactRequest> contacts,
      List<ContactRequest> selectedContacts,
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
              as List<ContactRequest>,
      selectedContacts: null == selectedContacts
          ? _value.selectedContacts
          : selectedContacts // ignore: cast_nullable_to_non_nullable
              as List<ContactRequest>,
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
abstract class _$$AddMemberStateImplCopyWith<$Res>
    implements $AddMemberStateCopyWith<$Res> {
  factory _$$AddMemberStateImplCopyWith(_$AddMemberStateImpl value,
          $Res Function(_$AddMemberStateImpl) then) =
      __$$AddMemberStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageCommand? pageCommand,
      PageState pageState,
      bool isLoading,
      String keyword,
      String groupId,
      List<ContactRequest> contacts,
      List<ContactRequest> selectedContacts,
      File? avatar});

  @override
  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class __$$AddMemberStateImplCopyWithImpl<$Res>
    extends _$AddMemberStateCopyWithImpl<$Res, _$AddMemberStateImpl>
    implements _$$AddMemberStateImplCopyWith<$Res> {
  __$$AddMemberStateImplCopyWithImpl(
      _$AddMemberStateImpl _value, $Res Function(_$AddMemberStateImpl) _then)
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
    return _then(_$AddMemberStateImpl(
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
              as List<ContactRequest>,
      selectedContacts: null == selectedContacts
          ? _value._selectedContacts
          : selectedContacts // ignore: cast_nullable_to_non_nullable
              as List<ContactRequest>,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$AddMemberStateImpl extends _AddMemberState {
  const _$AddMemberStateImpl(
      {this.pageCommand,
      this.pageState = PageState.loading,
      this.isLoading = false,
      this.keyword = '',
      this.groupId = '',
      final List<ContactRequest> contacts = const [],
      final List<ContactRequest> selectedContacts = const [],
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
  final File? avatar;

  @override
  String toString() {
    return 'AddMemberState(pageCommand: $pageCommand, pageState: $pageState, isLoading: $isLoading, keyword: $keyword, groupId: $groupId, contacts: $contacts, selectedContacts: $selectedContacts, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMemberStateImpl &&
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
  _$$AddMemberStateImplCopyWith<_$AddMemberStateImpl> get copyWith =>
      __$$AddMemberStateImplCopyWithImpl<_$AddMemberStateImpl>(
          this, _$identity);
}

abstract class _AddMemberState extends AddMemberState {
  const factory _AddMemberState(
      {final PageCommand? pageCommand,
      final PageState pageState,
      final bool isLoading,
      final String keyword,
      final String groupId,
      final List<ContactRequest> contacts,
      final List<ContactRequest> selectedContacts,
      final File? avatar}) = _$AddMemberStateImpl;
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
  List<ContactRequest> get contacts;
  @override
  List<ContactRequest> get selectedContacts;
  @override
  File? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$AddMemberStateImplCopyWith<_$AddMemberStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
