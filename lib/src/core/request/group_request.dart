import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/core/converters/date_time_converter.dart';
import 'package:keepup/src/enums/frequency_interval_type.dart';
import 'package:keepup/src/utils/app_validation.dart';

part 'group_request.freezed.dart';
part 'group_request.g.dart';

@freezed
class GroupRequest with _$GroupRequest {
  const GroupRequest._();

  @JsonSerializable(includeIfNull: false)
  const factory GroupRequest({
    @Default('') @JsonKey(name: 'id', includeToJson: false) String groupId,
    @Default('') @JsonKey(name: 'owner_id') String ownerId,
    @Default('') String name,
    @Default('') String description,
    @Default('') String avatar,
    @Default('') @JsonKey(name: 'category_id') String categoryId,
    @Default(FrequencyIntervalType.everyWeek)
    @JsonKey(name: 'frequency_interval', unknownEnumValue: FrequencyIntervalType.everyWeek)
    FrequencyIntervalType frequencyInterval,
    @Default([]) List<String> contacts,
    @DateTimeJsonConverter() @JsonKey(name: 'date_created') DateTime? dateCreated,
  }) = _GroupRequest;

  factory GroupRequest.fromJson(Map<String, dynamic> json) => _$GroupRequestFromJson(json);

  String? get nameError => AppValidations.validateField(name);

  bool get isValidate => name.isNotEmpty && nameError == null;

  int get daysLeft => 0;
}
