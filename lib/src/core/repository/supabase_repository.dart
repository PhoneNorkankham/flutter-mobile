import 'dart:io';

import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/local/dao/contact_dao.dart';
import 'package:keepup/src/core/local/dao/group_dao.dart';
import 'package:keepup/src/core/managers/supabase_manager.dart';
import 'package:keepup/src/core/model/logged_in_data.dart';
import 'package:keepup/src/core/network_bound_resource.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/core/resource.dart';
import 'package:keepup/src/utils/app_shared.dart';

class SupabaseRepository {
  final AppShared _appShared;
  final AppDatabase _appDatabase;
  final SupabaseManager _supabaseManager;

  GroupDao get _groupDao => _appDatabase.groupDao;

  ContactDao get _contactDao => _appDatabase.contactDao;

  SupabaseRepository(
    this._appShared,
    this._appDatabase,
    this._supabaseManager,
  );

  Future<Resource<LoggedInData>> getLoggedInData() {
    return NetworkBoundResource<LoggedInData, LoggedInData>(
      createSerializedCall: () => _supabaseManager.getLoggedInData(),
      saveCallResult: (result) => _appShared.setLoggedInData(result),
      loadFromDb: () async => _appShared.loggedInData,
    ).getAsFuture();
  }

  Future<Resource<LoggedInData>> createGuests() {
    return NetworkBoundResource<LoggedInData, LoggedInData>(
      createSerializedCall: () => _supabaseManager.createGuests(),
      saveCallResult: (result) => _appShared.setLoggedInData(result),
      loadFromDb: () async => _appShared.loggedInData,
    ).getAsFuture();
  }

  Future<Resource<Group>> joinGroup(GroupRequest group) {
    return NetworkBoundResource<Group, Group>(
      createSerializedCall: () => _supabaseManager.joinGroup(group),
      saveCallResult: (group) => _groupDao.insert(group),
    ).getAsFuture();
  }

  Future<Resource<Group>> insertGroup(GroupRequest group) {
    return NetworkBoundResource<Group, Group>(
      createSerializedCall: () => _supabaseManager.insertGroup(group),
      saveCallResult: (group) => _groupDao.insert(group),
    ).getAsFuture();
  }

  Future<Resource<Group>> updateGroup(GroupRequest request) {
    return NetworkBoundResource<Group, Group>(
      createSerializedCall: () => _supabaseManager.updateGroup(request),
      saveCallResult: (contact) => _groupDao.updateGroup(contact),
    ).getAsFuture();
  }

  Future<Resource<void>> deleteGroup(String groupId) {
    return NetworkBoundResource<void, void>(
      createSerializedCall: () => _supabaseManager.deleteGroup(groupId),
      saveCallResult: (_) => _groupDao.deleteGroup(groupId),
    ).getAsFuture();
  }

  Future<Resource<Contact>> insertContact(ContactRequest request) {
    return NetworkBoundResource<Contact, Contact>(
      createSerializedCall: () => _supabaseManager.insertContact(request),
      saveCallResult: (contact) => _contactDao.insertContact(contact),
    ).getAsFuture();
  }

  Future<Resource<Contact>> updateContact(ContactRequest request) {
    return NetworkBoundResource<Contact, Contact>(
      createSerializedCall: () => _supabaseManager.updateContact(request),
      saveCallResult: (contact) => _contactDao.updateContact(contact),
    ).getAsFuture();
  }

  Future<Resource<List<Group>>> updateContactInGroups({
    required String contactId,
    required List<String> groupIds,
  }) {
    return NetworkBoundResource<List<Group>, List<Group>>(
      createSerializedCall: () => _supabaseManager.updateContactInGroups(
        contactId: contactId,
        groupIds: groupIds,
      ),
      saveCallResult: (groups) async {
        for (Group group in groups) {
          await _groupDao.insert(group);
        }
      },
    ).getAsFuture();
  }

  Future<Resource<List<Group>>> getGroups() {
    return NetworkBoundResource<List<Group>, List<Group>>(
      createSerializedCall: () => _supabaseManager.getGroups(),
      loadFromDb: () => _groupDao.getGroups(),
      saveCallResult: (groups) async {
        await _groupDao.deleteAll();
        for (Group group in groups) {
          await _groupDao.insert(group);
        }
      },
    ).getAsFuture();
  }

  Stream<List<Group>> watchGroups() => _groupDao.watchGroups();

  Future<List<Group>> getDBGroups() => _groupDao.getGroups();

  Future<Resource<Group?>> getGroup(String groupId) {
    return NetworkBoundResource<Group?, Group?>(
      createSerializedCall: () => _supabaseManager.getGroup(groupId),
      loadFromDb: () => _groupDao.getGroup(groupId),
    ).getAsFuture();
  }

  Future<Resource<List<Contact>>> getContacts() {
    return NetworkBoundResource<List<Contact>, List<Contact>>(
      createSerializedCall: () => _supabaseManager.getContacts(),
      loadFromDb: () => _contactDao.getContacts(),
      saveCallResult: (contacts) async {
        await _contactDao.deleteAll();
        for (Contact contact in contacts) {
          await _contactDao.insertContact(contact);
        }
      },
    ).getAsFuture();
  }

  Stream<List<Contact>> watchContacts() => _contactDao.watchContacts();

  Future<List<Contact>> getAllContactByIds(List<String> contactIds) =>
      _contactDao.getAllContactByIds(contactIds);

  Future<Resource<String>> uploadAvatar(File file) {
    return NetworkBoundResource<String, String>(
      createSerializedCall: () => _supabaseManager.uploadAvatar(file),
    ).getAsFuture();
  }

  Future<Resource<Contact?>> getContact(String contactId) {
    return NetworkBoundResource<Contact?, Contact?>(
      createSerializedCall: () => _supabaseManager.getContact(contactId),
      loadFromDb: () => _contactDao.getContact(contactId),
    ).getAsFuture();
  }
}
