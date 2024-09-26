import 'dart:io';

import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/local/dao/category_dao.dart';
import 'package:keepup/src/core/local/dao/contact_dao.dart';
import 'package:keepup/src/core/local/dao/group_dao.dart';
import 'package:keepup/src/core/local/dao/interaction_dao.dart';
import 'package:keepup/src/core/managers/supabase_manager.dart';
import 'package:keepup/src/core/model/logged_in_data.dart';
import 'package:keepup/src/core/network_bound_resource.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/core/request/interaction_request.dart';
import 'package:keepup/src/core/resource.dart';
import 'package:keepup/src/enums/interaction_type.dart';
import 'package:keepup/src/utils/app_shared.dart';

class SupabaseRepository {
  final AppShared _appShared;
  final AppDatabase _appDatabase;
  final SupabaseManager _supabaseManager;

  GroupDao get _groupDao => _appDatabase.groupDao;

  ContactDao get _contactDao => _appDatabase.contactDao;

  CategoryDao get _categoryDao => _appDatabase.categoryDao;

  InteractionDao get _interactionDao => _appDatabase.interactionDao;

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

  Future<List<Category>> getDBCategories() => _categoryDao.getCategories();

  Future<Resource<List<Category>>> getCategories() {
    return NetworkBoundResource<List<Category>, List<Category>>(
      createSerializedCall: () => _supabaseManager.getCategories(),
      loadFromDb: () => _categoryDao.getCategories(),
      saveCallResult: (categories) async {
        await _categoryDao.deleteAll();
        await _categoryDao.insertAllOnConflictUpdate(categories);
      },
    ).getAsFuture();
  }

  Future<Resource<List<Group>>> createDefaultGroups() {
    return NetworkBoundResource<List<Group>, List<Group>>(
      createSerializedCall: () => _supabaseManager.createDefaultGroups(),
      saveCallResult: (groups) async {
        await _groupDao.insertAllOnConflictUpdate(groups);
        // final LoggedInData loggedInData = _appShared.loggedInData;
        // await _appShared.setLoggedInData(loggedInData.copyWith(isJoinedGroup: true));
      },
    ).getAsFuture();
  }

  Future<Resource<Group>> createGroup(GroupRequest group) {
    return NetworkBoundResource<Group, Group>(
      createSerializedCall: () => _supabaseManager.createGroup(group),
      saveCallResult: (group) => _groupDao.insertOnConflictUpdate(group),
    ).getAsFuture();
  }

  Future<Resource<Group>> updateGroup(GroupRequest request) {
    return NetworkBoundResource<Group, Group>(
      createSerializedCall: () => _supabaseManager.updateGroup(request),
      saveCallResult: (group) => _groupDao.insertOnConflictUpdate(group),
    ).getAsFuture();
  }

  Future<Resource<void>> addContactToGroup({
    required String contactId,
    required String groupId,
  }) {
    return NetworkBoundResource<void, Group>(
      createSerializedCall: () => _supabaseManager.addContactToGroup(
        contactId: contactId,
        groupId: groupId,
      ),
      saveCallResult: (group) => _groupDao.insertOnConflictUpdate(group),
    ).getAsFuture();
  }

  Future<Resource<void>> deleteGroup(String groupId) {
    return NetworkBoundResource<void, void>(
      createSerializedCall: () => _supabaseManager.deleteGroup(groupId),
      saveCallResult: (_) => _groupDao.deleteGroup(groupId),
    ).getAsFuture();
  }

  Future<Resource<Contact>> createContact(ContactRequest request) {
    return NetworkBoundResource<Contact, Contact>(
      createSerializedCall: () => _supabaseManager.insertContact(request),
      saveCallResult: (contact) => _contactDao.insertOrReplaceContact(contact),
    ).getAsFuture();
  }

  Future<Resource<Contact>> updateContactAvatar({
    required String contactId,
    required String avatar,
  }) {
    return NetworkBoundResource<Contact, Contact>(
      createSerializedCall: () => _supabaseManager.updateContactAvatar(contactId, avatar),
      saveCallResult: (contact) => _contactDao.insertOrReplaceContact(contact),
    ).getAsFuture();
  }

  Future<Resource<Contact>> updateContact(ContactRequest request) {
    return NetworkBoundResource<Contact, Contact>(
      createSerializedCall: () => _supabaseManager.updateContact(request),
      saveCallResult: (contact) => _contactDao.insertOrReplaceContact(contact),
    ).getAsFuture();
  }

  Future<Resource<List<Contact>>> updateContacts(List<ContactRequest> requests) {
    return NetworkBoundResource<List<Contact>, List<Contact>>(
      createSerializedCall: () => _supabaseManager.updateContacts(requests),
      saveCallResult: (contacts) => _contactDao.insertAllOnConflictUpdate(contacts),
    ).getAsFuture();
  }

  Future<Resource<void>> deleteContact(String contactId) {
    return NetworkBoundResource<void, void>(
      createSerializedCall: () => _supabaseManager.deleteContact(contactId),
      saveCallResult: (_) => _contactDao.deleteContact(contactId),
    ).getAsFuture();
  }

  Future<Resource<void>> deleteInteractionsOfContact(String contactId) {
    return NetworkBoundResource<void, void>(
      createSerializedCall: () => _supabaseManager.deleteInteractionsOfContact(contactId),
      saveCallResult: (_) => _interactionDao.deleteInteractionsOfContact(contactId),
    ).getAsFuture();
  }

  Future<Resource<void>> deleteContactInJoinedGroups(String contactId) {
    return NetworkBoundResource<void, void>(
      createSerializedCall: () => _supabaseManager.deleteContactInJoinedGroups(contactId),
      saveCallResult: (_) => _groupDao.deleteContactInJoinedGroups(contactId),
    ).getAsFuture();
  }

  Future<Resource<List<Group>>> getGroups() {
    return NetworkBoundResource<List<Group>, List<Group>>(
      createSerializedCall: () => _supabaseManager.getGroups(),
      loadFromDb: () => _groupDao.getGroups(),
      saveCallResult: (groups) async {
        await _groupDao.deleteAll();
        for (Group group in groups) {
          await _groupDao.insertOnConflictUpdate(group);
        }
      },
    ).getAsFuture();
  }

  Stream<List<Group>> watchDBGroups() => _groupDao.watchGroups();

  Future<List<Group>> getDBGroups() => _groupDao.getGroups();

  Future<Group?> getDBGroup(String groupId) => _groupDao.getGroup(groupId);

  Future<Resource<Group?>> getGroup(String groupId) {
    return NetworkBoundResource<Group?, Group?>(
      createSerializedCall: () => _supabaseManager.getGroup(groupId),
      loadFromDb: () => _groupDao.getGroup(groupId),
      saveCallResult: (group) async {
        if (group != null) {
          _groupDao.insertOnConflictUpdate(group);
        }
      },
    ).getAsFuture();
  }

  Future<Resource<List<Contact>>> getContacts() {
    return NetworkBoundResource<List<Contact>, List<Contact>>(
      createSerializedCall: () => _supabaseManager.getContacts(),
      loadFromDb: () => _contactDao.getContacts(),
      saveCallResult: (contacts) async {
        await _contactDao.deleteAll();
        await _contactDao.insertAllOnConflictUpdate(contacts);
      },
    ).getAsFuture();
  }

  Future<List<Contact>> getDBContacts() => _contactDao.getContacts();

  Stream<List<Contact>> watchDBContacts() => _contactDao.watchContacts();

  Future<List<Contact>> getDBContactByIds(List<String> contactIds) =>
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
      saveCallResult: (contact) async {
        if (contact != null) {
          await _contactDao.insertOrReplaceContact(contact);
        }
      },
    ).getAsFuture();
  }

  Future<Interaction?> getDBLastInteractionByContactId(String contactId) =>
      _interactionDao.getLastInteractionByContactId(contactId);

  Future<Resource<Interaction?>> getLastInteractionByContactId(String contactId) {
    return NetworkBoundResource<Interaction?, Interaction?>(
      createSerializedCall: () => _supabaseManager.getLastInteractionByContactId(contactId),
      loadFromDb: () => _interactionDao.getLastInteractionByContactId(contactId),
      saveCallResult: (interaction) async {
        if (interaction != null) {
          await _interactionDao.insertOrReplace(interaction);
        }
      },
    ).getAsFuture();
  }

  Future<List<Group>> getGroupsByContacts(List<Contact> contacts) async {
    List<String> groupIds = contacts.map((e) => e.groupId).toSet().toList();
    final List<Group> groups = [];
    for (String groupId in groupIds) {
      final Group? group = await _groupDao.getGroup(groupId);
      if (group == null || groups.contains(group)) continue;
      groups.add(group);
    }
    return groups;
  }

  Future<Resource<List<Interaction>>> getInteractions() {
    return NetworkBoundResource<List<Interaction>, List<Interaction>>(
      createSerializedCall: () => _supabaseManager.getInteractions(),
      loadFromDb: () => _interactionDao.getInteractions(),
      saveCallResult: (interactions) async {
        await _interactionDao.deleteAll();
        for (Interaction interaction in interactions) {
          await _interactionDao.insertOrReplace(interaction);
        }
      },
    ).getAsFuture();
  }

  Future<Resource<bool>> keepUpAllContacts(List<Contact> contacts) async {
    for (Contact contact in contacts) {
      final Resource<bool> resource = await keepUpContact(contact);
      if (resource.isError) {
        return Resource(
          type: ResourceType.REQUEST_ERROR,
          message: resource.message,
        );
      }
    }
    return Resource(type: ResourceType.REQUEST_OK);
  }

  Future<Resource<bool>> keepUpContact(Contact contact) async {
    final Group? group = await _groupDao.getGroup(contact.groupId);
    if (group != null) {
      // Update contact's expiration
      final contactRequest = ContactRequest.fromJson(contact.toJson()).copyWith(
        expiration: group.frequencyInterval.toExpirationDate(),
      );
      final Resource<Contact> updateContactResource = await updateContact(contactRequest);
      if (updateContactResource.isSuccess) {
        // Insert new interaction
        final interactionRequest = InteractionRequest(
          contactId: contact.id,
          method: InteractionMethodType.KeepUp,
        );
        final Resource<Interaction> resource = await insertInteraction(interactionRequest);
        if (resource.isError) {
          return Resource(
            type: ResourceType.REQUEST_ERROR,
            message: resource.message,
          );
        }
      } else {
        return Resource(
          type: ResourceType.REQUEST_ERROR,
          message: updateContactResource.message,
        );
      }
    }
    return Resource(type: ResourceType.REQUEST_OK);
  }

  Future<Resource<bool>> keepUpGroup(Group group) async {
    final List<String> contactIds = group.contacts.map((e) => e.toString()).toList();
    final List<Contact> contacts = await getDBContactByIds(contactIds);
    return keepUpAllContacts(contacts);
  }

  Future<Resource<Interaction>> insertInteraction(InteractionRequest request) {
    return NetworkBoundResource<Interaction, Interaction>(
      createSerializedCall: () => _supabaseManager.insertInteraction(request),
      saveCallResult: (interaction) => _interactionDao.insertOrReplace(interaction),
    ).getAsFuture();
  }

  Future<Resource<void>> resetData() {
    return NetworkBoundResource<void, void>(
      createSerializedCall: () => _supabaseManager.resetData(),
      saveCallResult: (_) => _appDatabase.deleteAll(),
    ).getAsFuture();
  }

  Future<Resource<void>> deleteAccount() {
    return NetworkBoundResource<void, void>(
      createSerializedCall: () => _supabaseManager.deleteAccount(),
      saveCallResult: (_) => _appDatabase.deleteAll(),
    ).getAsFuture();
  }

  Future<Resource<void>> logout() {
    return NetworkBoundResource<void, void>(
      createSerializedCall: () => _supabaseManager.logout(),
      saveCallResult: (_) => _appDatabase.deleteAll(),
    ).getAsFuture();
  }
}
