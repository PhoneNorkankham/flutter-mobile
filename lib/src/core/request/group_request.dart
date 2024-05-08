import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_request.freezed.dart';
part 'group_request.g.dart';

@freezed
class GroupRequest with _$GroupRequest {
  @JsonSerializable(includeIfNull: false)
  const factory GroupRequest({
    @Default('') @JsonKey(name: 'id', includeToJson: false) String groupId,
    @Default('') @JsonKey(name: 'owner_id') String ownerId,
    @Default('') String name,
    @Default('') String description,
    @Default('') String avatar,
    @JsonKey(name: 'frequency_interval') DateTime? frequencyInterval,
    @Default([]) List<String> contacts,
  }) = _GroupRequest;

  factory GroupRequest.fromJson(Map<String, dynamic> json) => _$GroupRequestFromJson(json);
}
