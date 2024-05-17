import 'package:flutter/material.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';

extension ContactsExtensions on List<Contact> {
  List<Contact> toKeepUpToday() {
    if (isEmpty) return this;
    final DateTime now = DateUtils.dateOnly(DateTime.now());
    return where((element) {
      final DateTime? expiration = element.expiration;
      return expiration == null || (expiration.isToday || expiration.isBefore(now));
    }).toList();
  }
}
