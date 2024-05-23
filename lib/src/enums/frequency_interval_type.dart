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

  DateTime toExpirationDate({DateTime? fromDate}) {
    final DateTime now = fromDate ?? DateTime.now();
    switch (this) {
      case FrequencyIntervalType.everyDay:
        return now.add(const Duration(days: 1));
      case FrequencyIntervalType.everyWeek:
        return now.add(const Duration(days: 7));
      case FrequencyIntervalType.everyTwoWeeks:
        return now.add(const Duration(days: 14));
      case FrequencyIntervalType.everyMonth:
        return now.copyWith(month: now.month + 1);
      case FrequencyIntervalType.everyThreeMonths:
        return now.copyWith(month: now.month + 3);
      case FrequencyIntervalType.everySixMonths:
        return now.copyWith(month: now.month + 6);
      case FrequencyIntervalType.everyYear:
        return now.copyWith(year: now.year + 1);
      default:
        return now;
    }
  }

  DateTime toDateCompleted(DateTime expiration) {
    switch (this) {
      case FrequencyIntervalType.everyDay:
        return expiration.subtract(const Duration(days: 1));
      case FrequencyIntervalType.everyWeek:
        return expiration.subtract(const Duration(days: 7));
      case FrequencyIntervalType.everyTwoWeeks:
        return expiration.subtract(const Duration(days: 14));
      case FrequencyIntervalType.everyMonth:
        return expiration.copyWith(month: expiration.month - 1);
      case FrequencyIntervalType.everyThreeMonths:
        return expiration.copyWith(month: expiration.month - 3);
      case FrequencyIntervalType.everySixMonths:
        return expiration.copyWith(month: expiration.month - 6);
      case FrequencyIntervalType.everyYear:
        return expiration.copyWith(year: expiration.year - 1);
      default:
        return expiration;
    }
  }
}
