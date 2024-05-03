import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_request.freezed.dart';
part 'contact_request.g.dart';

@freezed
class ContactRequest with _$ContactRequest {
  @JsonSerializable(includeIfNull: false)
  const factory ContactRequest({
    @Default('') @JsonKey(name: 'owner_id') String ownerId,
    DateTime? expiration,
    @JsonKey(name: 'date_created') DateTime? dateCreated,
  }) = _ContactRequest;

  factory ContactRequest.fromJson(Map<String, dynamic> json) => _$ContactRequestFromJson(json);
}
