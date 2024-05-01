import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
class GroupData with _$GroupData {
  @JsonSerializable(includeIfNull: false)
  const factory GroupData({
    String? id,
    @Default('') String name,
    @Default('') String avatar,
    @JsonKey(name: 'frequency_interval') DateTime? frequencyInterval,
    @Default([]) List<String> contacts,
  }) = _GroupData;

  factory GroupData.fromJson(Map<String, dynamic> json) => _$GroupDataFromJson(json);
}
