import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice_every_day_data.freezed.dart';
part 'choice_every_day_data.g.dart';

@freezed
class ChoiceEveryDayData with _$ChoiceEveryDayData {
  const factory ChoiceEveryDayData({
    @Default('') String text,
    @Default('') String description,
    @Default(true) bool isActive,
  }) = _ChoiceEveryDayData;

  factory ChoiceEveryDayData.fromJson(Map<String, dynamic> json) =>
      _$ChoiceEveryDayDataFromJson(json);
}
