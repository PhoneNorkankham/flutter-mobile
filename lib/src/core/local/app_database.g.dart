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
  static const VerificationMeta _ownerIdMeta =
      const VerificationMeta('ownerId');
  @override
  late final GeneratedColumn<String> ownerId = GeneratedColumn<String>(
      'owner_id', aliasedName, false,
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
  late final GeneratedColumnWithTypeConverter<FrequencyIntervalType, String>
      frequencyInterval = GeneratedColumn<String>(
              'frequency_interval', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant(FrequencyIntervalType.none.name))
          .withConverter<FrequencyIntervalType>(
              $GroupsTable.$converterfrequencyInterval);
  static const VerificationMeta _contactsMeta =
      const VerificationMeta('contacts');
  @override
  late final GeneratedColumnWithTypeConverter<List<dynamic>, String> contacts =
      GeneratedColumn<String>('contacts', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: const Constant('[]'))
          .withConverter<List<dynamic>>($GroupsTable.$convertercontacts);
  static const VerificationMeta _dateCreatedMeta =
      const VerificationMeta('dateCreated');
  @override
  late final GeneratedColumn<DateTime> dateCreated = GeneratedColumn<DateTime>(
      'date_created', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        ownerId,
        name,
        description,
        avatar,
        frequencyInterval,
        contacts,
        dateCreated
      ];
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
    if (data.containsKey('owner_id')) {
      context.handle(_ownerIdMeta,
          ownerId.isAcceptableOrUnknown(data['owner_id']!, _ownerIdMeta));
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
    context.handle(_frequencyIntervalMeta, const VerificationResult.success());
    context.handle(_contactsMeta, const VerificationResult.success());
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
  Group map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Group(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      ownerId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      avatar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}avatar'])!,
      frequencyInterval: $GroupsTable.$converterfrequencyInterval.fromSql(
          attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}frequency_interval'])!),
      contacts: $GroupsTable.$convertercontacts.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contacts'])!),
      dateCreated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_created']),
    );
  }

  @override
  $GroupsTable createAlias(String alias) {
    return $GroupsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<FrequencyIntervalType, String, String>
      $converterfrequencyInterval =
      const EnumNameConverter<FrequencyIntervalType>(
          FrequencyIntervalType.values);
  static TypeConverter<List<dynamic>, String> $convertercontacts =
      const ListStringConverter();
}

class Group extends DataClass implements Insertable<Group> {
  final String id;
  final String ownerId;
  final String name;
  final String description;
  final String avatar;
  final FrequencyIntervalType frequencyInterval;
  final List<dynamic> contacts;
  final DateTime? dateCreated;
  const Group(
      {required this.id,
      required this.ownerId,
      required this.name,
      required this.description,
      required this.avatar,
      required this.frequencyInterval,
      required this.contacts,
      this.dateCreated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['owner_id'] = Variable<String>(ownerId);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    map['avatar'] = Variable<String>(avatar);
    {
      map['frequency_interval'] = Variable<String>(
          $GroupsTable.$converterfrequencyInterval.toSql(frequencyInterval));
    }
    {
      map['contacts'] =
          Variable<String>($GroupsTable.$convertercontacts.toSql(contacts));
    }
    if (!nullToAbsent || dateCreated != null) {
      map['date_created'] = Variable<DateTime>(dateCreated);
    }
    return map;
  }

  GroupsCompanion toCompanion(bool nullToAbsent) {
    return GroupsCompanion(
      id: Value(id),
      ownerId: Value(ownerId),
      name: Value(name),
      description: Value(description),
      avatar: Value(avatar),
      frequencyInterval: Value(frequencyInterval),
      contacts: Value(contacts),
      dateCreated: dateCreated == null && nullToAbsent
          ? const Value.absent()
          : Value(dateCreated),
    );
  }

  factory Group.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Group(
      id: serializer.fromJson<String>(json['id']),
      ownerId: serializer.fromJson<String>(json['owner_id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      avatar: serializer.fromJson<String>(json['avatar']),
      frequencyInterval: $GroupsTable.$converterfrequencyInterval
          .fromJson(serializer.fromJson<String>(json['frequency_interval'])),
      contacts: serializer.fromJson<List<dynamic>>(json['contacts']),
      dateCreated: serializer.fromJson<DateTime?>(json['date_created']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'owner_id': serializer.toJson<String>(ownerId),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'avatar': serializer.toJson<String>(avatar),
      'frequency_interval': serializer.toJson<String>(
          $GroupsTable.$converterfrequencyInterval.toJson(frequencyInterval)),
      'contacts': serializer.toJson<List<dynamic>>(contacts),
      'date_created': serializer.toJson<DateTime?>(dateCreated),
    };
  }

  Group copyWith(
          {String? id,
          String? ownerId,
          String? name,
          String? description,
          String? avatar,
          FrequencyIntervalType? frequencyInterval,
          List<dynamic>? contacts,
          Value<DateTime?> dateCreated = const Value.absent()}) =>
      Group(
        id: id ?? this.id,
        ownerId: ownerId ?? this.ownerId,
        name: name ?? this.name,
        description: description ?? this.description,
        avatar: avatar ?? this.avatar,
        frequencyInterval: frequencyInterval ?? this.frequencyInterval,
        contacts: contacts ?? this.contacts,
        dateCreated: dateCreated.present ? dateCreated.value : this.dateCreated,
      );
  @override
  String toString() {
    return (StringBuffer('Group(')
          ..write('id: $id, ')
          ..write('ownerId: $ownerId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('avatar: $avatar, ')
          ..write('frequencyInterval: $frequencyInterval, ')
          ..write('contacts: $contacts, ')
          ..write('dateCreated: $dateCreated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, ownerId, name, description, avatar,
      frequencyInterval, contacts, dateCreated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Group &&
          other.id == this.id &&
          other.ownerId == this.ownerId &&
          other.name == this.name &&
          other.description == this.description &&
          other.avatar == this.avatar &&
          other.frequencyInterval == this.frequencyInterval &&
          other.contacts == this.contacts &&
          other.dateCreated == this.dateCreated);
}

class GroupsCompanion extends UpdateCompanion<Group> {
  final Value<String> id;
  final Value<String> ownerId;
  final Value<String> name;
  final Value<String> description;
  final Value<String> avatar;
  final Value<FrequencyIntervalType> frequencyInterval;
  final Value<List<dynamic>> contacts;
  final Value<DateTime?> dateCreated;
  final Value<int> rowid;
  const GroupsCompanion({
    this.id = const Value.absent(),
    this.ownerId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.avatar = const Value.absent(),
    this.frequencyInterval = const Value.absent(),
    this.contacts = const Value.absent(),
    this.dateCreated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GroupsCompanion.insert({
    required String id,
    this.ownerId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.avatar = const Value.absent(),
    this.frequencyInterval = const Value.absent(),
    this.contacts = const Value.absent(),
    this.dateCreated = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<Group> custom({
    Expression<String>? id,
    Expression<String>? ownerId,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? avatar,
    Expression<String>? frequencyInterval,
    Expression<String>? contacts,
    Expression<DateTime>? dateCreated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ownerId != null) 'owner_id': ownerId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (avatar != null) 'avatar': avatar,
      if (frequencyInterval != null) 'frequency_interval': frequencyInterval,
      if (contacts != null) 'contacts': contacts,
      if (dateCreated != null) 'date_created': dateCreated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GroupsCompanion copyWith(
      {Value<String>? id,
      Value<String>? ownerId,
      Value<String>? name,
      Value<String>? description,
      Value<String>? avatar,
      Value<FrequencyIntervalType>? frequencyInterval,
      Value<List<dynamic>>? contacts,
      Value<DateTime?>? dateCreated,
      Value<int>? rowid}) {
    return GroupsCompanion(
      id: id ?? this.id,
      ownerId: ownerId ?? this.ownerId,
      name: name ?? this.name,
      description: description ?? this.description,
      avatar: avatar ?? this.avatar,
      frequencyInterval: frequencyInterval ?? this.frequencyInterval,
      contacts: contacts ?? this.contacts,
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
      map['frequency_interval'] = Variable<String>($GroupsTable
          .$converterfrequencyInterval
          .toSql(frequencyInterval.value));
    }
    if (contacts.present) {
      map['contacts'] = Variable<String>(
          $GroupsTable.$convertercontacts.toSql(contacts.value));
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
    return (StringBuffer('GroupsCompanion(')
          ..write('id: $id, ')
          ..write('ownerId: $ownerId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('avatar: $avatar, ')
          ..write('frequencyInterval: $frequencyInterval, ')
          ..write('contacts: $contacts, ')
          ..write('dateCreated: $dateCreated, ')
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
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _groupIdMeta =
      const VerificationMeta('groupId');
  @override
  late final GeneratedColumn<String> groupId = GeneratedColumn<String>(
      'group_id', aliasedName, false,
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
  late final GeneratedColumn<DateTime> dateOfBirth = GeneratedColumn<DateTime>(
      'date_of_birth', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
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
  List<GeneratedColumn> get $columns => [
        id,
        ownerId,
        groupId,
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
    }
    if (data.containsKey('group_id')) {
      context.handle(_groupIdMeta,
          groupId.isAcceptableOrUnknown(data['group_id']!, _groupIdMeta));
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
    if (data.containsKey('date_of_birth')) {
      context.handle(
          _dateOfBirthMeta,
          dateOfBirth.isAcceptableOrUnknown(
              data['date_of_birth']!, _dateOfBirthMeta));
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
      ownerId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_id'])!,
      groupId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group_id'])!,
      avatar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}avatar'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      phoneNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_no'])!,
      dateOfBirth: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_of_birth']),
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
  final String ownerId;
  final String groupId;
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
      required this.groupId,
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
    map['group_id'] = Variable<String>(groupId);
    map['avatar'] = Variable<String>(avatar);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['phone_no'] = Variable<String>(phoneNo);
    if (!nullToAbsent || dateOfBirth != null) {
      map['date_of_birth'] = Variable<DateTime>(dateOfBirth);
    }
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
      ownerId: Value(ownerId),
      groupId: Value(groupId),
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
      groupId: serializer.fromJson<String>(json['group_id']),
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
      'group_id': serializer.toJson<String>(groupId),
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
          String? groupId,
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
        groupId: groupId ?? this.groupId,
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
          ..write('groupId: $groupId, ')
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
  int get hashCode => Object.hash(id, ownerId, groupId, avatar, name, email,
      phoneNo, dateOfBirth, expiration, dateCreated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Contact &&
          other.id == this.id &&
          other.ownerId == this.ownerId &&
          other.groupId == this.groupId &&
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
  final Value<String> groupId;
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
    this.groupId = const Value.absent(),
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
    this.ownerId = const Value.absent(),
    this.groupId = const Value.absent(),
    this.avatar = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.phoneNo = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.expiration = const Value.absent(),
    this.dateCreated = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<Contact> custom({
    Expression<String>? id,
    Expression<String>? ownerId,
    Expression<String>? groupId,
    Expression<String>? avatar,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? phoneNo,
    Expression<DateTime>? dateOfBirth,
    Expression<DateTime>? expiration,
    Expression<DateTime>? dateCreated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ownerId != null) 'owner_id': ownerId,
      if (groupId != null) 'group_id': groupId,
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
      Value<String>? groupId,
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
      groupId: groupId ?? this.groupId,
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
    if (groupId.present) {
      map['group_id'] = Variable<String>(groupId.value);
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
      map['date_of_birth'] = Variable<DateTime>(dateOfBirth.value);
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
          ..write('ownerId: $ownerId, ')
          ..write('groupId: $groupId, ')
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

class $InteractionsTable extends Interactions
    with TableInfo<$InteractionsTable, Interaction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $InteractionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contactIdMeta =
      const VerificationMeta('contactId');
  @override
  late final GeneratedColumn<String> contactId = GeneratedColumn<String>(
      'contact_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _dateCompletedMeta =
      const VerificationMeta('dateCompleted');
  @override
  late final GeneratedColumn<DateTime> dateCompleted =
      GeneratedColumn<DateTime>('date_completed', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _methodMeta = const VerificationMeta('method');
  @override
  late final GeneratedColumnWithTypeConverter<InteractionMethodType, String>
      method = GeneratedColumn<String>('method', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant(InteractionMethodType.None.name))
          .withConverter<InteractionMethodType>(
              $InteractionsTable.$convertermethod);
  @override
  List<GeneratedColumn> get $columns => [id, contactId, dateCompleted, method];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'interactions';
  @override
  VerificationContext validateIntegrity(Insertable<Interaction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('contact_id')) {
      context.handle(_contactIdMeta,
          contactId.isAcceptableOrUnknown(data['contact_id']!, _contactIdMeta));
    }
    if (data.containsKey('date_completed')) {
      context.handle(
          _dateCompletedMeta,
          dateCompleted.isAcceptableOrUnknown(
              data['date_completed']!, _dateCompletedMeta));
    }
    context.handle(_methodMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Interaction map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Interaction(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      contactId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contact_id'])!,
      dateCompleted: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}date_completed']),
      method: $InteractionsTable.$convertermethod.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}method'])!),
    );
  }

  @override
  $InteractionsTable createAlias(String alias) {
    return $InteractionsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<InteractionMethodType, String, String>
      $convertermethod = const EnumNameConverter<InteractionMethodType>(
          InteractionMethodType.values);
}

class Interaction extends DataClass implements Insertable<Interaction> {
  final String id;
  final String contactId;
  final DateTime? dateCompleted;
  final InteractionMethodType method;
  const Interaction(
      {required this.id,
      required this.contactId,
      this.dateCompleted,
      required this.method});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['contact_id'] = Variable<String>(contactId);
    if (!nullToAbsent || dateCompleted != null) {
      map['date_completed'] = Variable<DateTime>(dateCompleted);
    }
    {
      map['method'] =
          Variable<String>($InteractionsTable.$convertermethod.toSql(method));
    }
    return map;
  }

  InteractionsCompanion toCompanion(bool nullToAbsent) {
    return InteractionsCompanion(
      id: Value(id),
      contactId: Value(contactId),
      dateCompleted: dateCompleted == null && nullToAbsent
          ? const Value.absent()
          : Value(dateCompleted),
      method: Value(method),
    );
  }

  factory Interaction.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Interaction(
      id: serializer.fromJson<String>(json['id']),
      contactId: serializer.fromJson<String>(json['contact_id']),
      dateCompleted: serializer.fromJson<DateTime?>(json['date_completed']),
      method: $InteractionsTable.$convertermethod
          .fromJson(serializer.fromJson<String>(json['method'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'contact_id': serializer.toJson<String>(contactId),
      'date_completed': serializer.toJson<DateTime?>(dateCompleted),
      'method': serializer
          .toJson<String>($InteractionsTable.$convertermethod.toJson(method)),
    };
  }

  Interaction copyWith(
          {String? id,
          String? contactId,
          Value<DateTime?> dateCompleted = const Value.absent(),
          InteractionMethodType? method}) =>
      Interaction(
        id: id ?? this.id,
        contactId: contactId ?? this.contactId,
        dateCompleted:
            dateCompleted.present ? dateCompleted.value : this.dateCompleted,
        method: method ?? this.method,
      );
  @override
  String toString() {
    return (StringBuffer('Interaction(')
          ..write('id: $id, ')
          ..write('contactId: $contactId, ')
          ..write('dateCompleted: $dateCompleted, ')
          ..write('method: $method')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, contactId, dateCompleted, method);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Interaction &&
          other.id == this.id &&
          other.contactId == this.contactId &&
          other.dateCompleted == this.dateCompleted &&
          other.method == this.method);
}

class InteractionsCompanion extends UpdateCompanion<Interaction> {
  final Value<String> id;
  final Value<String> contactId;
  final Value<DateTime?> dateCompleted;
  final Value<InteractionMethodType> method;
  final Value<int> rowid;
  const InteractionsCompanion({
    this.id = const Value.absent(),
    this.contactId = const Value.absent(),
    this.dateCompleted = const Value.absent(),
    this.method = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  InteractionsCompanion.insert({
    required String id,
    this.contactId = const Value.absent(),
    this.dateCompleted = const Value.absent(),
    this.method = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<Interaction> custom({
    Expression<String>? id,
    Expression<String>? contactId,
    Expression<DateTime>? dateCompleted,
    Expression<String>? method,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (contactId != null) 'contact_id': contactId,
      if (dateCompleted != null) 'date_completed': dateCompleted,
      if (method != null) 'method': method,
      if (rowid != null) 'rowid': rowid,
    });
  }

  InteractionsCompanion copyWith(
      {Value<String>? id,
      Value<String>? contactId,
      Value<DateTime?>? dateCompleted,
      Value<InteractionMethodType>? method,
      Value<int>? rowid}) {
    return InteractionsCompanion(
      id: id ?? this.id,
      contactId: contactId ?? this.contactId,
      dateCompleted: dateCompleted ?? this.dateCompleted,
      method: method ?? this.method,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (contactId.present) {
      map['contact_id'] = Variable<String>(contactId.value);
    }
    if (dateCompleted.present) {
      map['date_completed'] = Variable<DateTime>(dateCompleted.value);
    }
    if (method.present) {
      map['method'] = Variable<String>(
          $InteractionsTable.$convertermethod.toSql(method.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('InteractionsCompanion(')
          ..write('id: $id, ')
          ..write('contactId: $contactId, ')
          ..write('dateCompleted: $dateCompleted, ')
          ..write('method: $method, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $GroupsTable groups = $GroupsTable(this);
  late final $ContactsTable contacts = $ContactsTable(this);
  late final $InteractionsTable interactions = $InteractionsTable(this);
  late final GroupDao groupDao = GroupDao(this as AppDatabase);
  late final ContactDao contactDao = ContactDao(this as AppDatabase);
  late final InteractionDao interactionDao =
      InteractionDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [groups, contacts, interactions];
}
