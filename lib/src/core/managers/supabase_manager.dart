import 'package:get/get.dart';
import 'package:keepup/src/core/model/contact.dart';
import 'package:keepup/src/core/model/group.dart';
import 'package:keepup/src/core/model/logged_in_data.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseManager {
  static const _supabaseUrl = 'https://abtxbiiaitrtayvmltko.supabase.co';
  static const _supabaseKey = String.fromEnvironment('SUPABASE_KEY');

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

  Future<bool> _isLoggedIn() async {
    if (uid.isNotEmpty && isExpired) {
      await _supabaseAuth.refreshSession();
    }
    return uid.isNotEmpty && !isExpired;
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

  Future<LoggedInData> createGuests() =>
      _supabaseAuth.signInAnonymously().then((_) => getLoggedInData());

  Future<dynamic> joinGroup(GroupData group) async {
    if (uid.isEmpty) await createGuests();
    final GroupData newGroup = group.copyWith(contacts: [uid]);
    return _supabase.from(_tbGroups).insert(newGroup.toJson()).select().then((value) {
      if (value.isNotEmpty) {
        final GroupData group = GroupData.fromJson(value.first);
        final String groupId = group.id ?? '';
        if (groupId.isNotEmpty) {
          final ContactData contact = ContactData(
            userId: uid,
            groupId: groupId,
          );
          return insertContact(contact);
        }
      }
      return Future.error(LocaleKey.creatingGroupFailed.tr);
    });
  }

  Future<List<GroupData>> getGroups() => _supabase
      .from(_tbGroups)
      .select()
      .then((value) => value.map((e) => GroupData.fromJson(e)).toList());

  Future<dynamic> insertContact(ContactData contact) =>
      _supabase.from(_tbContacts).insert(contact.toJson());
}
