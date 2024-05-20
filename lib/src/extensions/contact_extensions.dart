import 'package:flutter/material.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';

extension ContactsExtensions on List<Contact> {
  List<Contact> toKeepUpToday() {
    if (isEmpty) return this;
    final DateTime now = DateUtils.dateOnly(DateTime.now());
    return where((element) {
      final DateTime expiration = element.expiration ?? DateTime.now();
      final DateTime expirationDateOnly = DateUtils.dateOnly(expiration);
      return expirationDateOnly.isToday || expirationDateOnly.isBefore(now);
    }).toList();
  }

  List<Contact> toKeepUpInAWeek() {
    if (isEmpty) return this;
    final DateTime now = DateUtils.dateOnly(DateTime.now());
    final DateTime nextWeek = now.add(const Duration(days: 7));
    return where((element) {
      final DateTime expiration = element.expiration ?? DateTime.now();
      final DateTime expirationDateOnly = DateUtils.dateOnly(expiration);
      return expirationDateOnly.isToday || expirationDateOnly.isBefore(nextWeek);
    }).toList();
  }

  List<Contact> toKeepUpInAMonth() {
    if (isEmpty) return this;
    final DateTime now = DateUtils.dateOnly(DateTime.now());
    final DateTime nextMonth = now.copyWith(month: now.month + 1);
    return where((element) {
      final DateTime expiration = element.expiration ?? DateTime.now();
      final DateTime expirationDateOnly = DateUtils.dateOnly(expiration);
      return expirationDateOnly.isToday || expirationDateOnly.isBefore(nextMonth);
    }).toList();
  }
}
