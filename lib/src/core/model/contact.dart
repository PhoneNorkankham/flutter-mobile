import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class ContactData with _$ContactData {
  @JsonSerializable(includeIfNull: false)
  const factory ContactData({
    String? id,
    @Default('') @JsonKey(name: 'user_id') String userId,
    @Default('') @JsonKey(name: 'group_id') String groupId,
    DateTime? expiration,
    @JsonKey(name: 'date_created') DateTime? dateCreated,
  }) = _ContactData;

  factory ContactData.fromJson(Map<String, dynamic> json) => _$ContactDataFromJson(json);
}
