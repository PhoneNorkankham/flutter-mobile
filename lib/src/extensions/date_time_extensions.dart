import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  /// E.g. `15:11`
  String get timeNow => DateFormat('HH:mm').format(this);

  /// E.g.: "2023-10-20"
  String get generalDateText => DateFormat('yyyy-MM-dd').format(this);

  bool get isToday => DateUtils.isSameDay(toLocal(), DateTime.now());

  DateTime get tomorrow => DateUtils.addDaysToDate(this, 1);

  bool get isTomorrow => DateUtils.isSameDay(toLocal(), DateTime.now().tomorrow);

  // Function to check if a date is before "the day after tomorrow"
  bool get isDateBeforeDayAfterTomorrow {
    DateTime dateOnly = DateUtils.dateOnly(this); // Remove time in this date
    DateTime now = DateUtils.dateOnly(DateTime.now()); // Remove time in today
    // The day after tomorrow is two days after today.
    DateTime dayAfterTomorrow = now.add(const Duration(days: 2));

    return dateOnly.isBefore(dayAfterTomorrow);
  }

  // Function to check if a date is in the current week (starting from the day after tomorrow)
  bool get isDateInCurrentWeekFromDayAfterTomorrow {
    DateTime dateOnly = DateUtils.dateOnly(this); // Remove time in this date
    DateTime now = DateUtils.dateOnly(DateTime.now()); // Remove time in today
    DateTime dayAfterTomorrow = now.add(const Duration(days: 2));

    // Calculate the first and last day of the week in the current week
    DateTime startOfWeek = now.subtract(Duration(days: now.weekday - 1)); // Monday
    DateTime endOfWeek = startOfWeek.add(const Duration(days: 6)); // Sunday

    return dateOnly.isAfter(dayAfterTomorrow.subtract(const Duration(days: 1))) &&
        dateOnly.isBefore(endOfWeek.add(const Duration(days: 1)));
  }

  // Function to check if a date is in the current month and starts from the next week
  bool get isDateInNextWeekAndThisMonth {
    DateTime dateOnly = DateUtils.dateOnly(this); // Remove time in this date
    DateTime now = DateUtils.dateOnly(DateTime.now()); // Remove time in today

    // Calculate the first day of the next week (Monday next week)
    DateTime startOfNextWeek = now.add(Duration(days: 7 - now.weekday + 1));

    // Check if a date is in the current month and after or equal to the first day of the next week
    return month == now.month &&
        year == now.year &&
        dateOnly.isAfter(startOfNextWeek.subtract(const Duration(days: 1)));
  }
}
