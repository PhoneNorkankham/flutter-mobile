import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_request.freezed.dart';
part 'group_request.g.dart';

@freezed
class GroupRequest with _$GroupRequest {
  @JsonSerializable(includeIfNull: false)
  const factory GroupRequest({
    @Default('') @JsonKey(name: 'user_id') String userId,
    @Default('') String name,
    @Default('') String avatar,
    @JsonKey(name: 'frequency_interval') DateTime? frequencyInterval,
    @Default([]) List<String> contacts,
  }) = _GroupRequest;

  factory GroupRequest.fromJson(Map<String, dynamic> json) => _$GroupRequestFromJson(json);
}
