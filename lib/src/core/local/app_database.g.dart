// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $GroupsTable extends Groups with TableInfo<$GroupsTable, Group> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GroupsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _avatarMeta = const VerificationMeta('avatar');
  @override
  late final GeneratedColumn<String> avatar = GeneratedColumn<String>(
      'avatar', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _frequencyIntervalMeta =
      const VerificationMeta('frequencyInterval');
  @override
  late final GeneratedColumn<DateTime> frequencyInterval =
      GeneratedColumn<DateTime>('frequency_interval', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _contactsMeta =
      const VerificationMeta('contacts');
  @override
  late final GeneratedColumnWithTypeConverter<List<dynamic>?, String> contacts =
      GeneratedColumn<String>('contacts', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<dynamic>?>($GroupsTable.$convertercontactsn);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, avatar, frequencyInterval, contacts];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'groups';
  @override
  VerificationContext validateIntegrity(Insertable<Group> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('avatar')) {
      context.handle(_avatarMeta,
          avatar.isAcceptableOrUnknown(data['avatar']!, _avatarMeta));
    }
    if (data.containsKey('frequency_interval')) {
      context.handle(
          _frequencyIntervalMeta,
          frequencyInterval.isAcceptableOrUnknown(
              data['frequency_interval']!, _frequencyIntervalMeta));
    }
    context.handle(_contactsMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Group map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Group(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      avatar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}avatar'])!,
      frequencyInterval: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}frequency_interval']),
      contacts: $GroupsTable.$convertercontactsn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contacts'])),
    );
  }

  @override
  $GroupsTable createAlias(String alias) {
    return $GroupsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<dynamic>, String> $convertercontacts =
      const ListStringConverter();
  static TypeConverter<List<dynamic>?, String?> $convertercontactsn =
      NullAwareTypeConverter.wrap($convertercontacts);
}

class Group extends DataClass implements Insertable<Group> {
  final String id;
  final String name;
  final String avatar;
  final DateTime? frequencyInterval;
  final List<dynamic>? contacts;
  const Group(
      {required this.id,
      required this.name,
      required this.avatar,
      this.frequencyInterval,
      this.contacts});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['avatar'] = Variable<String>(avatar);
    if (!nullToAbsent || frequencyInterval != null) {
      map['frequency_interval'] = Variable<DateTime>(frequencyInterval);
    }
    if (!nullToAbsent || contacts != null) {
      map['contacts'] =
          Variable<String>($GroupsTable.$convertercontactsn.toSql(contacts));
    }
    return map;
  }

  GroupsCompanion toCompanion(bool nullToAbsent) {
    return GroupsCompanion(
      id: Value(id),
      name: Value(name),
      avatar: Value(avatar),
      frequencyInterval: frequencyInterval == null && nullToAbsent
          ? const Value.absent()
          : Value(frequencyInterval),
      contacts: contacts == null && nullToAbsent
          ? const Value.absent()
          : Value(contacts),
    );
  }

  factory Group.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Group(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      avatar: serializer.fromJson<String>(json['avatar']),
      frequencyInterval:
          serializer.fromJson<DateTime?>(json['frequencyInterval']),
      contacts: serializer.fromJson<List<dynamic>?>(json['contacts']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'avatar': serializer.toJson<String>(avatar),
      'frequencyInterval': serializer.toJson<DateTime?>(frequencyInterval),
      'contacts': serializer.toJson<List<dynamic>?>(contacts),
    };
  }

  Group copyWith(
          {String? id,
          String? name,
          String? avatar,
          Value<DateTime?> frequencyInterval = const Value.absent(),
          Value<List<dynamic>?> contacts = const Value.absent()}) =>
      Group(
        id: id ?? this.id,
        name: name ?? this.name,
        avatar: avatar ?? this.avatar,
        frequencyInterval: frequencyInterval.present
            ? frequencyInterval.value
            : this.frequencyInterval,
        contacts: contacts.present ? contacts.value : this.contacts,
      );
  @override
  String toString() {
    return (StringBuffer('Group(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('avatar: $avatar, ')
          ..write('frequencyInterval: $frequencyInterval, ')
          ..write('contacts: $contacts')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, avatar, frequencyInterval, contacts);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Group &&
          other.id == this.id &&
          other.name == this.name &&
          other.avatar == this.avatar &&
          other.frequencyInterval == this.frequencyInterval &&
          other.contacts == this.contacts);
}

class GroupsCompanion extends UpdateCompanion<Group> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> avatar;
  final Value<DateTime?> frequencyInterval;
  final Value<List<dynamic>?> contacts;
  final Value<int> rowid;
  const GroupsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.avatar = const Value.absent(),
    this.frequencyInterval = const Value.absent(),
    this.contacts = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GroupsCompanion.insert({
    required String id,
    this.name = const Value.absent(),
    this.avatar = const Value.absent(),
    this.frequencyInterval = const Value.absent(),
    this.contacts = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<Group> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? avatar,
    Expression<DateTime>? frequencyInterval,
    Expression<String>? contacts,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (avatar != null) 'avatar': avatar,
      if (frequencyInterval != null) 'frequency_interval': frequencyInterval,
      if (contacts != null) 'contacts': contacts,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GroupsCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? avatar,
      Value<DateTime?>? frequencyInterval,
      Value<List<dynamic>?>? contacts,
      Value<int>? rowid}) {
    return GroupsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
      frequencyInterval: frequencyInterval ?? this.frequencyInterval,
      contacts: contacts ?? this.contacts,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (avatar.present) {
      map['avatar'] = Variable<String>(avatar.value);
    }
    if (frequencyInterval.present) {
      map['frequency_interval'] = Variable<DateTime>(frequencyInterval.value);
    }
    if (contacts.present) {
      map['contacts'] = Variable<String>(
          $GroupsTable.$convertercontactsn.toSql(contacts.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GroupsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('avatar: $avatar, ')
          ..write('frequencyInterval: $frequencyInterval, ')
          ..write('contacts: $contacts, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ContactsTable extends Contacts with TableInfo<$ContactsTable, Contact> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ContactsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _groupIdMeta =
      const VerificationMeta('groupId');
  @override
  late final GeneratedColumn<String> groupId = GeneratedColumn<String>(
      'group_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _expirationMeta =
      const VerificationMeta('expiration');
  @override
  late final GeneratedColumn<DateTime> expiration = GeneratedColumn<DateTime>(
      'expiration', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _dateCreatedMeta =
      const VerificationMeta('dateCreated');
  @override
  late final GeneratedColumn<DateTime> dateCreated = GeneratedColumn<DateTime>(
      'date_created', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, groupId, expiration, dateCreated];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'contacts';
  @override
  VerificationContext validateIntegrity(Insertable<Contact> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('group_id')) {
      context.handle(_groupIdMeta,
          groupId.isAcceptableOrUnknown(data['group_id']!, _groupIdMeta));
    } else if (isInserting) {
      context.missing(_groupIdMeta);
    }
    if (data.containsKey('expiration')) {
      context.handle(
          _expirationMeta,
          expiration.isAcceptableOrUnknown(
              data['expiration']!, _expirationMeta));
    }
    if (data.containsKey('date_created')) {
      context.handle(
          _dateCreatedMeta,
          dateCreated.isAcceptableOrUnknown(
              data['date_created']!, _dateCreatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Contact map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Contact(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      groupId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group_id'])!,
      expiration: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expiration']),
      dateCreated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_created']),
    );
  }

  @override
  $ContactsTable createAlias(String alias) {
    return $ContactsTable(attachedDatabase, alias);
  }
}

class Contact extends DataClass implements Insertable<Contact> {
  final String id;
  final String groupId;
  final DateTime? expiration;
  final DateTime? dateCreated;
  const Contact(
      {required this.id,
      required this.groupId,
      this.expiration,
      this.dateCreated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['group_id'] = Variable<String>(groupId);
    if (!nullToAbsent || expiration != null) {
      map['expiration'] = Variable<DateTime>(expiration);
    }
    if (!nullToAbsent || dateCreated != null) {
      map['date_created'] = Variable<DateTime>(dateCreated);
    }
    return map;
  }

  ContactsCompanion toCompanion(bool nullToAbsent) {
    return ContactsCompanion(
      id: Value(id),
      groupId: Value(groupId),
      expiration: expiration == null && nullToAbsent
          ? const Value.absent()
          : Value(expiration),
      dateCreated: dateCreated == null && nullToAbsent
          ? const Value.absent()
          : Value(dateCreated),
    );
  }

  factory Contact.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Contact(
      id: serializer.fromJson<String>(json['id']),
      groupId: serializer.fromJson<String>(json['groupId']),
      expiration: serializer.fromJson<DateTime?>(json['expiration']),
      dateCreated: serializer.fromJson<DateTime?>(json['dateCreated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'groupId': serializer.toJson<String>(groupId),
      'expiration': serializer.toJson<DateTime?>(expiration),
      'dateCreated': serializer.toJson<DateTime?>(dateCreated),
    };
  }

  Contact copyWith(
          {String? id,
          String? groupId,
          Value<DateTime?> expiration = const Value.absent(),
          Value<DateTime?> dateCreated = const Value.absent()}) =>
      Contact(
        id: id ?? this.id,
        groupId: groupId ?? this.groupId,
        expiration: expiration.present ? expiration.value : this.expiration,
        dateCreated: dateCreated.present ? dateCreated.value : this.dateCreated,
      );
  @override
  String toString() {
    return (StringBuffer('Contact(')
          ..write('id: $id, ')
          ..write('groupId: $groupId, ')
          ..write('expiration: $expiration, ')
          ..write('dateCreated: $dateCreated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, groupId, expiration, dateCreated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Contact &&
          other.id == this.id &&
          other.groupId == this.groupId &&
          other.expiration == this.expiration &&
          other.dateCreated == this.dateCreated);
}

class ContactsCompanion extends UpdateCompanion<Contact> {
  final Value<String> id;
  final Value<String> groupId;
  final Value<DateTime?> expiration;
  final Value<DateTime?> dateCreated;
  final Value<int> rowid;
  const ContactsCompanion({
    this.id = const Value.absent(),
    this.groupId = const Value.absent(),
    this.expiration = const Value.absent(),
    this.dateCreated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ContactsCompanion.insert({
    required String id,
    required String groupId,
    this.expiration = const Value.absent(),
    this.dateCreated = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        groupId = Value(groupId);
  static Insertable<Contact> custom({
    Expression<String>? id,
    Expression<String>? groupId,
    Expression<DateTime>? expiration,
    Expression<DateTime>? dateCreated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (groupId != null) 'group_id': groupId,
      if (expiration != null) 'expiration': expiration,
      if (dateCreated != null) 'date_created': dateCreated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ContactsCompanion copyWith(
      {Value<String>? id,
      Value<String>? groupId,
      Value<DateTime?>? expiration,
      Value<DateTime?>? dateCreated,
      Value<int>? rowid}) {
    return ContactsCompanion(
      id: id ?? this.id,
      groupId: groupId ?? this.groupId,
      expiration: expiration ?? this.expiration,
      dateCreated: dateCreated ?? this.dateCreated,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (groupId.present) {
      map['group_id'] = Variable<String>(groupId.value);
    }
    if (expiration.present) {
      map['expiration'] = Variable<DateTime>(expiration.value);
    }
    if (dateCreated.present) {
      map['date_created'] = Variable<DateTime>(dateCreated.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContactsCompanion(')
          ..write('id: $id, ')
          ..write('groupId: $groupId, ')
          ..write('expiration: $expiration, ')
          ..write('dateCreated: $dateCreated, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $GroupsTable groups = $GroupsTable(this);
  late final $ContactsTable contacts = $ContactsTable(this);
  late final GroupDao groupDao = GroupDao(this as AppDatabase);
  late final ContactDao contactDao = ContactDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [groups, contacts];
}
