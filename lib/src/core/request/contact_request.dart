import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/core/converters/date_time_converter.dart';
import 'package:keepup/src/core/converters/list_string_converter.dart';
import 'package:keepup/src/utils/app_validation.dart';

part 'contact_request.freezed.dart';
part 'contact_request.g.dart';

@freezed
class ContactRequest with _$ContactRequest {
  const ContactRequest._();

  @JsonSerializable(includeIfNull: false)
  const factory ContactRequest({
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
    @Default(false) @JsonKey(includeFromJson: false, includeToJson: false) bool isExpanded,
    @Default([]) @JsonKey(includeFromJson: false, includeToJson: false) List<String> groupIds,
  }) = _ContactRequest;

  factory ContactRequest.fromJson(Map<String, dynamic> json) => _$ContactRequestFromJson(json);

  String? get nameError => AppValidations.validateField(name);

  String? get emailError => AppValidations.validateEmail(email);

  bool get isValidate => name.isNotEmpty && nameError == null && emailError == null;
}
