import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/core/converters/date_time_converter.dart';
import 'package:keepup/src/core/converters/list_string_converter.dart';

part 'add_contact_request.freezed.dart';
part 'add_contact_request.g.dart';

@freezed
class AddContactRequest with _$AddContactRequest {
  const AddContactRequest._();

  @JsonSerializable(includeIfNull: false)
  const factory AddContactRequest({
    @Default('') @JsonKey(name: 'id', includeToJson: false) String contactId,
    @Default('') @JsonKey(name: 'owner_id') String ownerId,
    @Default('') String avatar,
    @Default('') String name,
    @Default('') String email,
    @Default('') @JsonKey(name: 'phone_no') String phoneNo,
    @DateTimeJsonConverter() @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
    @ListStringJsonConverter() @Default([]) List<bool> frequency,
    @DateTimeJsonConverter() DateTime? expiration,
    @DateTimeJsonConverter() @JsonKey(name: 'date_created') DateTime? dateCreated,
    @Default(false) bool isExpanded,
    @Default(false) bool isSelected,
    @Default([]) List<String> groupIds,
  }) = _AddContactRequest;

  factory AddContactRequest.fromJson(Map<String, dynamic> json) =>
      _$AddContactRequestFromJson(json);
}
