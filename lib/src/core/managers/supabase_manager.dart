import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseManager {
  static const _supabaseUrl = 'https://abtxbiiaitrtayvmltko.supabase.co';
  static const _supabaseKey = String.fromEnvironment('SUPABASE_KEY');

  static Future<Supabase> initialize() => Supabase.initialize(
        url: _supabaseUrl,
        anonKey: _supabaseKey,
      );

  final SupabaseClient _supabase = Supabase.instance.client;

  GoTrueClient get _supabaseAuth => _supabase.auth;

  String get uid => _supabaseAuth.currentUser?.id ?? '';

  bool get isExpired => _supabaseAuth.currentSession?.isExpired ?? true;

  bool get isAnonymous => _supabaseAuth.currentUser?.isAnonymous ?? true;

  Future<bool> isLoggedIn() async {
    if (uid.isNotEmpty && isExpired) {
      await _supabaseAuth.refreshSession();
    }
    return uid.isNotEmpty && !isExpired && !isAnonymous;
  }
}
