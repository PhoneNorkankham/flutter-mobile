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
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
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
      [id, name, description, avatar, frequencyInterval, contacts];
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
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
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
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
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
  final String description;
  final String avatar;
  final DateTime? frequencyInterval;
  final List<dynamic>? contacts;
  const Group(
      {required this.id,
      required this.name,
      required this.description,
      required this.avatar,
      this.frequencyInterval,
      this.contacts});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
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
      description: Value(description),
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
      description: serializer.fromJson<String>(json['description']),
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
      'description': serializer.toJson<String>(description),
      'avatar': serializer.toJson<String>(avatar),
      'frequencyInterval': serializer.toJson<DateTime?>(frequencyInterval),
      'contacts': serializer.toJson<List<dynamic>?>(contacts),
    };
  }

  Group copyWith(
          {String? id,
          String? name,
          String? description,
          String? avatar,
          Value<DateTime?> frequencyInterval = const Value.absent(),
          Value<List<dynamic>?> contacts = const Value.absent()}) =>
      Group(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
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
          ..write('description: $description, ')
          ..write('avatar: $avatar, ')
          ..write('frequencyInterval: $frequencyInterval, ')
          ..write('contacts: $contacts')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, description, avatar, frequencyInterval, contacts);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Group &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.avatar == this.avatar &&
          other.frequencyInterval == this.frequencyInterval &&
          other.contacts == this.contacts);
}

class GroupsCompanion extends UpdateCompanion<Group> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> description;
  final Value<String> avatar;
  final Value<DateTime?> frequencyInterval;
  final Value<List<dynamic>?> contacts;
  final Value<int> rowid;
  const GroupsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.avatar = const Value.absent(),
    this.frequencyInterval = const Value.absent(),
    this.contacts = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GroupsCompanion.insert({
    required String id,
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.avatar = const Value.absent(),
    this.frequencyInterval = const Value.absent(),
    this.contacts = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<Group> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? avatar,
    Expression<DateTime>? frequencyInterval,
    Expression<String>? contacts,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (avatar != null) 'avatar': avatar,
      if (frequencyInterval != null) 'frequency_interval': frequencyInterval,
      if (contacts != null) 'contacts': contacts,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GroupsCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? description,
      Value<String>? avatar,
      Value<DateTime?>? frequencyInterval,
      Value<List<dynamic>?>? contacts,
      Value<int>? rowid}) {
    return GroupsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
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
    if (description.present) {
      map['description'] = Variable<String>(description.value);
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
          ..write('description: $description, ')
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
  static const VerificationMeta _ownerIdMeta =
      const VerificationMeta('ownerId');
  @override
  late final GeneratedColumn<String> ownerId = GeneratedColumn<String>(
      'owner_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _avatarMeta = const VerificationMeta('avatar');
  @override
  late final GeneratedColumn<String> avatar = GeneratedColumn<String>(
      'avatar', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _phoneNoMeta =
      const VerificationMeta('phoneNo');
  @override
  late final GeneratedColumn<String> phoneNo = GeneratedColumn<String>(
      'phone_no', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _dateOfBirthMeta =
      const VerificationMeta('dateOfBirth');
  @override
  late final GeneratedColumnWithTypeConverter<DateTime?, String> dateOfBirth =
      GeneratedColumn<String>('date_of_birth', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<DateTime?>($ContactsTable.$converterdateOfBirth);
  static const VerificationMeta _expirationMeta =
      const VerificationMeta('expiration');
  @override
  late final GeneratedColumnWithTypeConverter<DateTime?, String> expiration =
      GeneratedColumn<String>('expiration', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<DateTime?>($ContactsTable.$converterexpiration);
  static const VerificationMeta _dateCreatedMeta =
      const VerificationMeta('dateCreated');
  @override
  late final GeneratedColumnWithTypeConverter<DateTime?, String> dateCreated =
      GeneratedColumn<String>('date_created', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<DateTime?>($ContactsTable.$converterdateCreated);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        ownerId,
        avatar,
        name,
        email,
        phoneNo,
        dateOfBirth,
        expiration,
        dateCreated
      ];
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
    if (data.containsKey('owner_id')) {
      context.handle(_ownerIdMeta,
          ownerId.isAcceptableOrUnknown(data['owner_id']!, _ownerIdMeta));
    } else if (isInserting) {
      context.missing(_ownerIdMeta);
    }
    if (data.containsKey('avatar')) {
      context.handle(_avatarMeta,
          avatar.isAcceptableOrUnknown(data['avatar']!, _avatarMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('phone_no')) {
      context.handle(_phoneNoMeta,
          phoneNo.isAcceptableOrUnknown(data['phone_no']!, _phoneNoMeta));
    }
    context.handle(_dateOfBirthMeta, const VerificationResult.success());
    context.handle(_expirationMeta, const VerificationResult.success());
    context.handle(_dateCreatedMeta, const VerificationResult.success());
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
      ownerId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_id'])!,
      avatar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}avatar'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      phoneNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_no'])!,
      dateOfBirth: $ContactsTable.$converterdateOfBirth.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date_of_birth'])),
      expiration: $ContactsTable.$converterexpiration.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}expiration'])),
      dateCreated: $ContactsTable.$converterdateCreated.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date_created'])),
    );
  }

  @override
  $ContactsTable createAlias(String alias) {
    return $ContactsTable(attachedDatabase, alias);
  }

  static TypeConverter<DateTime?, String?> $converterdateOfBirth =
      const DateTimeConverter();
  static TypeConverter<DateTime?, String?> $converterexpiration =
      const DateTimeConverter();
  static TypeConverter<DateTime?, String?> $converterdateCreated =
      const DateTimeConverter();
}

class Contact extends DataClass implements Insertable<Contact> {
  final String id;
  final String ownerId;
  final String avatar;
  final String name;
  final String email;
  final String phoneNo;
  final DateTime? dateOfBirth;
  final DateTime? expiration;
  final DateTime? dateCreated;
  const Contact(
      {required this.id,
      required this.ownerId,
      required this.avatar,
      required this.name,
      required this.email,
      required this.phoneNo,
      this.dateOfBirth,
      this.expiration,
      this.dateCreated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['owner_id'] = Variable<String>(ownerId);
    map['avatar'] = Variable<String>(avatar);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['phone_no'] = Variable<String>(phoneNo);
    if (!nullToAbsent || dateOfBirth != null) {
      map['date_of_birth'] = Variable<String>(
          $ContactsTable.$converterdateOfBirth.toSql(dateOfBirth));
    }
    if (!nullToAbsent || expiration != null) {
      map['expiration'] = Variable<String>(
          $ContactsTable.$converterexpiration.toSql(expiration));
    }
    if (!nullToAbsent || dateCreated != null) {
      map['date_created'] = Variable<String>(
          $ContactsTable.$converterdateCreated.toSql(dateCreated));
    }
    return map;
  }

  ContactsCompanion toCompanion(bool nullToAbsent) {
    return ContactsCompanion(
      id: Value(id),
      ownerId: Value(ownerId),
      avatar: Value(avatar),
      name: Value(name),
      email: Value(email),
      phoneNo: Value(phoneNo),
      dateOfBirth: dateOfBirth == null && nullToAbsent
          ? const Value.absent()
          : Value(dateOfBirth),
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
      ownerId: serializer.fromJson<String>(json['owner_id']),
      avatar: serializer.fromJson<String>(json['avatar']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      phoneNo: serializer.fromJson<String>(json['phone_no']),
      dateOfBirth: serializer.fromJson<DateTime?>(json['date_of_birth']),
      expiration: serializer.fromJson<DateTime?>(json['expiration']),
      dateCreated: serializer.fromJson<DateTime?>(json['date_created']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'owner_id': serializer.toJson<String>(ownerId),
      'avatar': serializer.toJson<String>(avatar),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'phone_no': serializer.toJson<String>(phoneNo),
      'date_of_birth': serializer.toJson<DateTime?>(dateOfBirth),
      'expiration': serializer.toJson<DateTime?>(expiration),
      'date_created': serializer.toJson<DateTime?>(dateCreated),
    };
  }

  Contact copyWith(
          {String? id,
          String? ownerId,
          String? avatar,
          String? name,
          String? email,
          String? phoneNo,
          Value<DateTime?> dateOfBirth = const Value.absent(),
          Value<DateTime?> expiration = const Value.absent(),
          Value<DateTime?> dateCreated = const Value.absent()}) =>
      Contact(
        id: id ?? this.id,
        ownerId: ownerId ?? this.ownerId,
        avatar: avatar ?? this.avatar,
        name: name ?? this.name,
        email: email ?? this.email,
        phoneNo: phoneNo ?? this.phoneNo,
        dateOfBirth: dateOfBirth.present ? dateOfBirth.value : this.dateOfBirth,
        expiration: expiration.present ? expiration.value : this.expiration,
        dateCreated: dateCreated.present ? dateCreated.value : this.dateCreated,
      );
  @override
  String toString() {
    return (StringBuffer('Contact(')
          ..write('id: $id, ')
          ..write('ownerId: $ownerId, ')
          ..write('avatar: $avatar, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('phoneNo: $phoneNo, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('expiration: $expiration, ')
          ..write('dateCreated: $dateCreated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, ownerId, avatar, name, email, phoneNo,
      dateOfBirth, expiration, dateCreated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Contact &&
          other.id == this.id &&
          other.ownerId == this.ownerId &&
          other.avatar == this.avatar &&
          other.name == this.name &&
          other.email == this.email &&
          other.phoneNo == this.phoneNo &&
          other.dateOfBirth == this.dateOfBirth &&
          other.expiration == this.expiration &&
          other.dateCreated == this.dateCreated);
}

class ContactsCompanion extends UpdateCompanion<Contact> {
  final Value<String> id;
  final Value<String> ownerId;
  final Value<String> avatar;
  final Value<String> name;
  final Value<String> email;
  final Value<String> phoneNo;
  final Value<DateTime?> dateOfBirth;
  final Value<DateTime?> expiration;
  final Value<DateTime?> dateCreated;
  final Value<int> rowid;
  const ContactsCompanion({
    this.id = const Value.absent(),
    this.ownerId = const Value.absent(),
    this.avatar = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.phoneNo = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.expiration = const Value.absent(),
    this.dateCreated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ContactsCompanion.insert({
    required String id,
    required String ownerId,
    this.avatar = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.phoneNo = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.expiration = const Value.absent(),
    this.dateCreated = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        ownerId = Value(ownerId);
  static Insertable<Contact> custom({
    Expression<String>? id,
    Expression<String>? ownerId,
    Expression<String>? avatar,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? phoneNo,
    Expression<String>? dateOfBirth,
    Expression<String>? expiration,
    Expression<String>? dateCreated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ownerId != null) 'owner_id': ownerId,
      if (avatar != null) 'avatar': avatar,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (phoneNo != null) 'phone_no': phoneNo,
      if (dateOfBirth != null) 'date_of_birth': dateOfBirth,
      if (expiration != null) 'expiration': expiration,
      if (dateCreated != null) 'date_created': dateCreated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ContactsCompanion copyWith(
      {Value<String>? id,
      Value<String>? ownerId,
      Value<String>? avatar,
      Value<String>? name,
      Value<String>? email,
      Value<String>? phoneNo,
      Value<DateTime?>? dateOfBirth,
      Value<DateTime?>? expiration,
      Value<DateTime?>? dateCreated,
      Value<int>? rowid}) {
    return ContactsCompanion(
      id: id ?? this.id,
      ownerId: ownerId ?? this.ownerId,
      avatar: avatar ?? this.avatar,
      name: name ?? this.name,
      email: email ?? this.email,
      phoneNo: phoneNo ?? this.phoneNo,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
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
    if (ownerId.present) {
      map['owner_id'] = Variable<String>(ownerId.value);
    }
    if (avatar.present) {
      map['avatar'] = Variable<String>(avatar.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (phoneNo.present) {
      map['phone_no'] = Variable<String>(phoneNo.value);
    }
    if (dateOfBirth.present) {
      map['date_of_birth'] = Variable<String>(
          $ContactsTable.$converterdateOfBirth.toSql(dateOfBirth.value));
    }
    if (expiration.present) {
      map['expiration'] = Variable<String>(
          $ContactsTable.$converterexpiration.toSql(expiration.value));
    }
    if (dateCreated.present) {
      map['date_created'] = Variable<String>(
          $ContactsTable.$converterdateCreated.toSql(dateCreated.value));
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
          ..write('ownerId: $ownerId, ')
          ..write('avatar: $avatar, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('phoneNo: $phoneNo, ')
          ..write('dateOfBirth: $dateOfBirth, ')
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
