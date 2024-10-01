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
}
