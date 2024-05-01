import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_request.freezed.dart';
part 'contact_request.g.dart';

@freezed
class ContactRequest with _$ContactRequest {
  @JsonSerializable(includeIfNull: false)
  const factory ContactRequest({
    @Default('') @JsonKey(name: 'user_id') String userId,
    @Default('') @JsonKey(name: 'group_id') String groupId,
    DateTime? expiration,
    @JsonKey(name: 'date_created') DateTime? dateCreated,
  }) = _ContactRequest;

  factory ContactRequest.fromJson(Map<String, dynamic> json) => _$ContactRequestFromJson(json);
}
