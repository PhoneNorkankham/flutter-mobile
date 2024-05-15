import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';

enum FrequencyIntervalType {
  everyDay,
  everyWeek,
  everyTwoWeeks,
  everyMonth,
  everyThreeMonths,
  everySixMonths,
  everyYear,
  none;

  String get title {
    return switch (this) {
      everyDay => LocaleKey.everyDay.tr,
      everyWeek => LocaleKey.everyWeek.tr,
      everyTwoWeeks => LocaleKey.everyTwoWeeks.tr,
      everyMonth => LocaleKey.everyMonth.tr,
      everyThreeMonths => LocaleKey.everyThreeMonths.tr,
      everySixMonths => LocaleKey.everySixMonths.tr,
      everyYear => LocaleKey.everyYear.tr,
      none => LocaleKey.none.tr,
    };
  }
}
