import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_request.freezed.dart';
part 'user_request.g.dart';

@freezed
class UserRequest with _$UserRequest {
  @JsonSerializable(includeIfNull: false)
  const factory UserRequest({
    required String id,
    @Default('') String name,
    @JsonKey(name: 'date_created') DateTime? dateCreated,
    @JsonKey(name: 'date_logged_in') DateTime? dateLoggedIn,
  }) = _UserRequest;

  factory UserRequest.fromJson(Map<String, dynamic> json) => _$UserRequestFromJson(json);
}
