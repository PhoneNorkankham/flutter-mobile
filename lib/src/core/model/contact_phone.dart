import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_phone.freezed.dart';
part 'contact_phone.g.dart';

@freezed
class ContactPhone with _$ContactPhone {
  const factory ContactPhone({
    @Default(0) @JsonKey(includeFromJson: false, includeToJson: false) int key,
    @Default('') String label,
    @Default('') String value,
  }) = _ContactPhone;

  factory ContactPhone.fromJson(Map<String, dynamic> json) => _$ContactPhoneFromJson(json);
}
