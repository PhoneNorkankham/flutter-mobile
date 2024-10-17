import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'user_request.freezed.dart';
part 'user_request.g.dart';

@freezed
class UserRequest with _$UserRequest {
  @JsonSerializable(includeIfNull: false)
  const factory UserRequest({
    required String id,
    String? name,
    @JsonKey(name: 'date_created') DateTime? dateCreated,
    @JsonKey(name: 'date_logged_in') DateTime? dateLoggedIn,
  }) = _UserRequest;

  factory UserRequest.fromJson(Map<String, dynamic> json) => _$UserRequestFromJson(json);

  factory UserRequest.fromGoTrueUser(User user, {OAuthProvider? provider}) {
    String? name;
    List<UserIdentity> identities = user.identities ?? [];
    if (provider != null) {
      identities.removeWhere((identity) => identity.provider != provider.name);
    }
    if (identities.isNotEmpty) {
      final identityData = identities.first.identityData ?? {};
      name = identityData['name'] ?? identityData['full_name'];
    }
    return UserRequest(
      id: user.id,
      name: name ?? user.email?.split('@').firstOrNull,
      dateCreated: DateTime.tryParse(user.createdAt),
      dateLoggedIn: DateTime.tryParse(user.lastSignInAt ?? ''),
    );
  }
}
