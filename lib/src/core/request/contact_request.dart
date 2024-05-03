import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/core/converters/date_time_converter.dart';
import 'package:keepup/src/utils/app_validation.dart';

part 'contact_request.freezed.dart';
part 'contact_request.g.dart';

@freezed
class ContactRequest with _$ContactRequest {
  const ContactRequest._();

  @JsonSerializable(includeIfNull: false, converters: [DateTimeJsonConverter()])
  const factory ContactRequest({
    @Default('') @JsonKey(name: 'owner_id') String ownerId,
    @Default('') String name,
    @Default('') String email,
    @Default('') @JsonKey(name: 'phone_no') String phoneNo,
    @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
    @Default([]) List<bool> frequency,
    DateTime? expiration,
    @JsonKey(name: 'date_created') DateTime? dateCreated,
  }) = _ContactRequest;

  factory ContactRequest.fromJson(Map<String, dynamic> json) => _$ContactRequestFromJson(json);

  String? get nameError => AppValidations.validateField(name);

  String? get emailError => AppValidations.validateEmail(email);

  bool get isValidate => name.isNotEmpty && nameError == null && emailError == null;
}
