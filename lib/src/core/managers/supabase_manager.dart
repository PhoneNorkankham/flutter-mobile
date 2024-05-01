import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/model/logged_in_data.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/core/request/user_request.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseManager {
  static const _supabaseUrl = 'https://abtxbiiaitrtayvmltko.supabase.co';
  static const _supabaseKey = String.fromEnvironment('SUPABASE_KEY');

  final _tbUsers = 'Users';
  final _tbGroups = 'Groups';
  final _tbContacts = 'Contacts';

  final _fieldUserID = 'user_id';

  static Future<Supabase> initialize() => Supabase.initialize(
        url: _supabaseUrl,
        anonKey: _supabaseKey,
      );

  final SupabaseClient _supabase = Supabase.instance.client;

  GoTrueClient get _supabaseAuth => _supabase.auth;

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
          .from(_tbContacts)
          .select()
          .eq(_fieldUserID, uid)
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
    return insertGroup(request.copyWith(contacts: [uid]));
  }

  Future<void> insertUser(UserRequest request) => _supabase.from(_tbUsers).insert(request.toJson());

  Future<Group> insertGroup(GroupRequest request) => _supabase
          .from(_tbGroups)
          .insert(request.copyWith(userId: uid).toJson())
          .select()
          .then((value) {
        if (value.isNotEmpty) {
          return Group.fromJson(value.first);
        }
        return Future.error(LocaleKey.creatingGroupFailed.tr);
      });

  Future<Contact> insertContact(ContactRequest request) => _supabase
          .from(_tbContacts)
          .insert(request.copyWith(userId: uid).toJson())
          .select()
          .then((value) {
        if (value.isNotEmpty) {
          return Contact.fromJson(value.first);
        } else {
          return Future.error(LocaleKey.creatingContactFailed.tr);
        }
      });

  Future<List<Group>> getGroups() => _supabase
      .from(_tbGroups)
      .select()
      .eq(_fieldUserID, uid)
      .then((value) => value.map((e) => Group.fromJson(e)).toList());

  Future<List<Contact>> getContacts() => _supabase
      .from(_tbContacts)
      .select()
      .eq(_fieldUserID, uid)
      .then((value) => value.map((e) => Contact.fromJson(e)).toList());
}
