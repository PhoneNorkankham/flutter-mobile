import 'dart:io';

import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Value;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/model/logged_in_data.dart';
import 'package:keepup/src/core/model/user_data.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/core/request/interaction_request.dart';
import 'package:keepup/src/core/request/user_request.dart';
import 'package:keepup/src/enums/frequency_interval_type.dart';
import 'package:keepup/src/extensions/group_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/utils/app_api_config.dart';
import 'package:keepup/src/utils/app_constants.dart';
import 'package:path/path.dart' as p;
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseManager {
  final _tbUsers = 'Users';
  final _tbGroups = 'Groups';
  final _tbContacts = 'Contacts';
  final _tbCategories = 'Categories';
  final _tbInteractions = 'Interactions';

  final _fieldId = 'id';
  final _fieldOwnerId = 'owner_id';
  final _fieldContactId = 'contact_id';
  final _fieldAvatar = 'avatar';

  static Future<Supabase> initialize() => Supabase.initialize(
        url: AppConstants.supabaseUrl,
        anonKey: AppConstants.supabaseKey,
      );

  final SupabaseClient _supabase = Supabase.instance.client;

  GoTrueClient get _supabaseAuth => _supabase.auth;

  SupabaseStorageClient get _supabaseStorage => _supabase.storage;

  String get uid => _supabaseAuth.currentUser?.id ?? '';

  Future<LoggedInData> confirmLinkedIdentity(String code) async {
    final AuthSessionUrlResponse response = await _supabaseAuth.exchangeCodeForSession(code);
    final Session session = response.session;
    final User user = session.user;
    final UserRequest request = UserRequest.fromGoTrueUser(user);
    await upsertUser(request);
    return getLoggedInData();
  }

  Future<LoggedInData> getLoggedInData() async {
    final currentUser = _supabaseAuth.currentUser;
    if (currentUser != null) {
      final currentSession = _supabaseAuth.currentSession;
      if (currentSession != null) {
        UserData? userData = await getUser();
        return LoggedInData(
          isLoggedIn: true,
          isExpired: currentSession.isExpired,
          isAnonymous: currentUser.isAnonymous,
          userData: userData,
        );
      }
    }
    return const LoggedInData();
  }

  Future<LoggedInData> signInWithAnonymous() {
    return _supabaseAuth.signInAnonymously().then((response) async {
      final User? user = response.user;
      if (user != null) {
        final UserRequest request = UserRequest.fromGoTrueUser(user);
        await upsertUser(request);
      }
      return getLoggedInData();
    });
  }

  Future<LoggedInData> signInWithGoogle() async {
    // Check if user is already signed in
    final currentUser = _supabaseAuth.currentUser;
    if (currentUser != null) {
      bool isAnonymous = currentUser.isAnonymous;
      if (isAnonymous) {
        final bool linked = await _supabaseAuth.linkIdentity(OAuthProvider.google);
        if (!linked) {
          throw 'Failed to link Google account.';
        }
      }
      return getLoggedInData();
    }

    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId: AppApiConfig.googleClientId,
      serverClientId: AppConstants.webClientId,
      scopes: <String>['email', 'profile'],
    );

    // Logout with Google
    final signedIn = await googleSignIn.isSignedIn();
    if (signedIn) {
      await googleSignIn.signOut();
    }

    // Login with Google
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) {
      // User has cancelled login
      throw '';
    }

    final googleAuth = await googleUser.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;
    if (accessToken == null) {
      throw 'No Access Token found.';
    }
    debugPrint('Access Token: $accessToken');
    if (idToken == null) {
      throw 'No ID Token found.';
    }
    debugPrint('ID Token: $idToken');

    // Login with Supabase
    final response = await _supabase.auth.signInWithIdToken(
      provider: OAuthProvider.google,
      idToken: idToken,
      accessToken: accessToken,
    );
    final User? user = response.user;
    if (user != null) {
      final UserRequest request = UserRequest.fromGoTrueUser(user, provider: OAuthProvider.google);
      await upsertUser(request);
    }
    return getLoggedInData();
  }

  Future<void> upsertUser(UserRequest request) async {
    UserData? user = await getUser();
    if (user != null && user.name.isNotEmpty) {
      request = request.copyWith(name: user.name);
    }
    return _supabase.from(_tbUsers).upsert(request.toJson());
  }

  Future<UserData?> getUser() => _supabase
      .from(_tbUsers)
      .select()
      .eq(_fieldId, uid)
      .then((value) => value.map((e) => UserData.fromJson(e)).firstOrNull);

  Future<List<Category>> getCategories() => _supabase
      .from(_tbCategories)
      .select()
      .then((value) => value.map((e) => Category.fromJson(e)).toList());

  Future<List<Group>> createDefaultGroups() async {
    final List<GroupRequest> requests = AppConstants.onBoardingGroups
        .map((e) => GroupRequest(name: e, frequencyInterval: FrequencyIntervalType.everyWeek))
        .toList();
    final List<Group> groups = [];
    for (GroupRequest request in requests) {
      final Group group = await createGroup(request);
      groups.add(group);
    }
    return groups;
  }

  Future<Group> createGroup(GroupRequest request) => _supabase
          .from(_tbGroups)
          .insert(request.copyWith(ownerId: uid).toJson())
          .select()
          .maybeSingle()
          .then((value) {
        if (value != null) {
          return Group.fromJson(value);
        }
        return Future.error(LocaleKey.creatingGroupFailed.tr);
      });

  Future<Group> updateGroup(GroupRequest request) => _supabase
      .from(_tbGroups)
      .update(request.toJson())
      .match({'id': request.groupId})
      .select()
      .maybeSingle()
      .then((value) {
        if (value != null) {
          return Group.fromJson(value);
        } else {
          return Future.error(LocaleKey.updatingGroupFailed.tr);
        }
      });

  Future<void> deleteGroup(String groupId) =>
      _supabase.from(_tbGroups).delete().match({'id': groupId});

  Future<Contact> _combineGroupName(Contact contact) async {
    if (contact.groupId.isNotEmpty) {
      final Group? group = await getGroup(contact.groupId);
      return contact.copyWith(groupName: Value(group?.name ?? ''));
    }
    return contact;
  }

  Future<List<Contact>> getContacts() => _supabase
          .from(_tbContacts)
          .select()
          .eq(_fieldOwnerId, uid)
          .then((value) => value.map((e) => Contact.fromJson(e)).toList())
          .then((contacts) async {
        final List<Contact> newContacts = [];
        for (Contact contact in contacts) {
          Contact newContact = await _combineGroupName(contact);
          newContacts.add(newContact);
        }
        return newContacts;
      });

  Future<Contact?> getContact(String contactId) => _supabase
      .from(_tbContacts)
      .select()
      .eq(_fieldId, contactId)
      .maybeSingle()
      .then((value) => value != null
          ? _combineGroupName(Contact.fromJson(value))
          : Future.error(LocaleKey.contactNotFound.tr));

  Future<Contact> insertContact(ContactRequest request) => _supabase
      .from(_tbContacts)
      .insert(request.copyWith(ownerId: uid).toJson())
      .select()
      .maybeSingle()
      .then((value) => value != null
          ? _combineGroupName(Contact.fromJson(value))
          : Future.error(LocaleKey.creatingContactFailed.tr));

  Future<Contact> updateContactAvatar(String contactId, String avatar) => _supabase
      .from(_tbContacts)
      .update({_fieldAvatar: avatar})
      .match({_fieldId: contactId})
      .select()
      .maybeSingle()
      .then((value) => value != null
          ? _combineGroupName(Contact.fromJson(value))
          : Future.error(LocaleKey.updatingContactFailed.tr));

  Future<Contact> updateContact(ContactRequest request) => _supabase
      .from(_tbContacts)
      .update(request.toJson())
      .match({_fieldId: request.contactId})
      .select()
      .maybeSingle()
      .then((value) => value != null
          ? _combineGroupName(Contact.fromJson(value))
          : Future.error(LocaleKey.updatingContactFailed.tr));

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
      final List<String> contactIds = [...group.contactIds]
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
      final Group newGroup = group.copyWith(contacts: [...group.contactIds, contactId]);
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
      .maybeSingle()
      .then((value) => value == null ? null : Group.fromJson(value));

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

  Future<String> uploadAvatarFromBytes(Uint8List fileBytes) {
    String fileExtension = '.jpg';
    String avatarPath = '$uid/avatar/${DateTime.now().millisecondsSinceEpoch}$fileExtension';
    return _supabaseStorage
        .from('images')
        .uploadBinary(
          avatarPath,
          fileBytes,
          fileOptions: const FileOptions(
            cacheControl: '3600',
            upsert: true,
          ),
        )
        .then((value) => _supabaseStorage.from('images').getPublicUrl(avatarPath));
  }

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

  Future<void> resetData() async {
    await _deleteAllGroups();
    await _deleteAllContacts();
    await _deleteAllInteractions();
  }

  Future<void> deleteAccount() async {
    await resetData();
    await _deleteUser(uid);
    await _supabaseAuth.signOut(scope: SignOutScope.global);
  }

  Future<void> logout() {
    final currentUser = _supabaseAuth.currentUser;
    if (currentUser != null && currentUser.isAnonymous) {
      return deleteAccount();
    }
    return _supabaseAuth.signOut();
  }
}
