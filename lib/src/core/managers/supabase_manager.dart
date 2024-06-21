import 'dart:io';

import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/model/logged_in_data.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/core/request/interaction_request.dart';
import 'package:keepup/src/core/request/user_request.dart';
import 'package:keepup/src/extensions/contact_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/utils/app_constants.dart';
import 'package:path/path.dart' as p;
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseManager {
  final _tbUsers = 'Users';
  final _tbGroups = 'Groups';
  final _tbContacts = 'Contacts';
  final _tbInteractions = 'Interactions';

  final _fieldId = 'id';
  final _fieldOwnerId = 'owner_id';
  final _fieldContactId = 'contact_id';

  static Future<Supabase> initialize() => Supabase.initialize(
        url: AppConstants.supabaseUrl,
        anonKey: AppConstants.supabaseKey,
      );

  final SupabaseClient _supabase = Supabase.instance.client;

  GoTrueClient get _supabaseAuth => _supabase.auth;

  SupabaseStorageClient get _supabaseStorage => _supabase.storage;

  String get uid => _supabaseAuth.currentUser?.id ?? '';

  bool get isExpired => _supabaseAuth.currentSession?.isExpired ?? true;

  bool get isAnonymous => _supabaseAuth.currentUser?.isAnonymous ?? true;

  Future<bool> _isLoggedIn() {
    if (uid.isNotEmpty && isExpired) {
      return _supabaseAuth
          .refreshSession()
          .then((value) => uid.isNotEmpty && !isExpired)
          .catchError((e) => _supabaseAuth.signOut().then((value) => false));
    }
    return Future.value(uid.isNotEmpty && !isExpired);
  }

  Future<bool> _isJoinedGroup() {
    if (uid.isNotEmpty) {
      return _supabase
          .from(_tbGroups)
          .select()
          .eq(_fieldOwnerId, uid)
          .then((value) => value.isNotEmpty);
    } else {
      return Future.value(false);
    }
  }

  Future<LoggedInData> getLoggedInData() async {
    final isLoggedIn = await _isLoggedIn();
    final isJoinedGroup = await _isJoinedGroup();
    return LoggedInData(
      isLoggedIn: isLoggedIn,
      isExpired: isExpired,
      isAnonymous: isAnonymous,
      isJoinedGroup: isJoinedGroup,
    );
  }

  Future<LoggedInData> createGuests() {
    return _supabaseAuth.signInAnonymously().then((response) async {
      final User? user = response.user;
      if (user != null) {
        final request = UserRequest(
          id: user.id,
          dateCreated: DateTime.tryParse(user.createdAt),
          dateLoggedIn: DateTime.tryParse(user.lastSignInAt ?? ''),
        );
        await insertUser(request);
      }
      return getLoggedInData();
    });
  }

  Future<Group> joinGroup(GroupRequest request) async {
    if (uid.isEmpty) await createGuests();
    return insertGroup(request);
  }

  Future<void> insertUser(UserRequest request) => _supabase.from(_tbUsers).insert(request.toJson());

  Future<Group> insertGroup(GroupRequest request) => _supabase
          .from(_tbGroups)
          .insert(request.copyWith(ownerId: uid).toJson())
          .select()
          .then((value) {
        if (value.isNotEmpty) {
          return Group.fromJson(value.first);
        }
        return Future.error(LocaleKey.creatingGroupFailed.tr);
      });

  Future<Group> updateGroup(GroupRequest request) => _supabase
      .from(_tbGroups)
      .update(request.toJson())
      .match({'id': request.groupId})
      .select()
      .then((value) {
        if (value.isNotEmpty) {
          return Group.fromJson(value.first);
        } else {
          return Future.error(LocaleKey.updatingGroupFailed.tr);
        }
      });

  Future<void> deleteGroup(String groupId) =>
      _supabase.from(_tbGroups).delete().match({'id': groupId});

  Future<Contact> insertContact(ContactRequest request) => _supabase
          .from(_tbContacts)
          .insert(request.copyWith(ownerId: uid).toJson())
          .select()
          .then((value) {
        if (value.isNotEmpty) {
          return Contact.fromJson(value.first);
        } else {
          return Future.error(LocaleKey.creatingContactFailed.tr);
        }
      });

  Future<Contact> updateContact(ContactRequest request) => _supabase
      .from(_tbContacts)
      .update(request.toJson())
      .match({'id': request.contactId})
      .select()
      .then((value) {
        if (value.isNotEmpty) {
          return Contact.fromJson(value.first);
        } else {
          return Future.error(LocaleKey.updatingContactFailed.tr);
        }
      });

  Future<List<Contact>> updateContacts(List<ContactRequest> requests) async {
    final List<Contact> contacts = [];
    for (ContactRequest request in requests) {
      final Contact contact = await updateContact(request);
      contacts.add(contact);
    }
    return contacts;
  }

  Future<void> deleteContact(String contactId) =>
      _supabase.from(_tbContacts).delete().match({'id': contactId});

  Future<void> deleteContactInJoinedGroups(String contactId) async {
    // Get all groups
    final List<Group> groups = await getGroups();

    // Get all joined groups
    final List<Group> joinedGroups =
        groups.where((element) => element.contacts.contains(contactId)).toList();

    // Get all leave groups
    final List<Group> leaveGroups = joinedGroups.map((group) {
      final List<String> contactIds = [...group.contacts]
        // Remove contactId in group
        ..removeWhere((element) => element == contactId);
      return group.copyWith(contacts: contactIds);
    }).toList();

    // Update groups
    for (Group group in leaveGroups) {
      await updateGroup(GroupRequest.fromJson(group.toJson()));
    }
  }

  Future<Group?> addContactToGroup({
    required String contactId,
    required String groupId,
  }) async {
    final Group? group = await getGroup(groupId);
    if (group != null) {
      final Group newGroup = group.copyWith(contacts: [...group.contacts, contactId]);
      return updateGroup(GroupRequest.fromJson(newGroup.toJson()));
    }
    return throw LocaleKey.theGroupDoesNotExist.tr;
  }

  Future<List<Group>> getGroups() => _supabase
      .from(_tbGroups)
      .select()
      .eq(_fieldOwnerId, uid)
      .then((value) => value.map((e) => Group.fromJson(e)).toList());

  Future<Group?> getGroup(String groupId) => _supabase
      .from(_tbGroups)
      .select()
      .eq(_fieldId, groupId)
      .then((value) => value.map((e) => Group.fromJson(e)).toList().firstOrNull);

  Future<List<Contact>> getContacts() => _supabase
      .from(_tbContacts)
      .select()
      .eq(_fieldOwnerId, uid)
      .then((value) => value.map((e) => Contact.fromJson(e)).toList());

  Future<Contact?> getContact(String contactId) => _supabase
      .from(_tbContacts)
      .select()
      .eq(_fieldId, contactId)
      .then((value) => value.map((e) => Contact.fromJson(e)).toList().firstOrNull);

  Future<String> uploadAvatar(File file) {
    String fileExtension = p.extension(file.path, 2);
    if (fileExtension.isEmpty) {
      fileExtension = '.png';
    }
    String avatarPath = '$uid/avatar/${DateTime.now().millisecondsSinceEpoch}$fileExtension';
    return _supabaseStorage
        .from('images')
        .upload(
          avatarPath,
          file,
          fileOptions: const FileOptions(
            cacheControl: '3600',
            upsert: true,
          ),
        )
        .then((value) => _supabaseStorage.from('images').getPublicUrl(avatarPath));
  }

  Future<List<Contact>> getTodayContacts() =>
      getContacts().then((contacts) => contacts.toKeepUpToday());

  Future<List<Interaction>> getInteractions() => _supabase
      .from(_tbInteractions)
      .select()
      .eq(_fieldOwnerId, uid)
      .then((value) => value.map((e) => Interaction.fromJson(e)).toList());

  Future<Interaction?> getLastInteractionByContactId(String contactId) => _supabase
      .from(_tbInteractions)
      .select()
      .eq(_fieldContactId, contactId)
      .then((value) => value.map((e) => Interaction.fromJson(e)).toList().firstOrNull);

  Future<Interaction> insertInteraction(InteractionRequest request) => _supabase
          .from(_tbInteractions)
          .insert(request.copyWith(ownerId: uid).toJson())
          .select()
          .then((value) {
        if (value.isNotEmpty) {
          return Interaction.fromJson(value.first);
        } else {
          return Future.error(LocaleKey.creatingInteractionFailed.tr);
        }
      });

  Future<void> deleteInteractionsOfContact(String contactId) =>
      _supabase.from(_tbInteractions).delete().match({_fieldContactId: contactId});

  _deleteAllGroups() => _supabase.from(_tbGroups).delete().match({_fieldOwnerId: uid});

  _deleteAllContacts() => _supabase.from(_tbContacts).delete().match({_fieldOwnerId: uid});

  _deleteAllInteractions() => _supabase.from(_tbInteractions).delete().match({_fieldOwnerId: uid});

  _deleteUser(String uid) => _supabase.from(_tbUsers).delete().match({_fieldId: uid});

  Future<void> _signOut() => _supabaseAuth.signOut(scope: SignOutScope.global);

  Future<void> resetData() async {
    await _deleteAllGroups();
    await _deleteAllContacts();
    await _deleteAllInteractions();
  }

  Future<void> deleteAccount() async {
    await resetData();
    await _deleteUser(uid);
    await _signOut();
  }

  Future<void> logout() {
    if (isAnonymous) {
      return deleteAccount();
    } else {
      return _signOut();
    }
  }
}
