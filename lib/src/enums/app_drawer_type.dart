import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';

enum AppDrawerType {
  socialLogin,
  todayStatistics,
  manageMessages,
  payments,
  termsAndPolicy,
  about,
  logout;

  String get title {
    return switch (this) {
      socialLogin => LocaleKey.socialLogin.tr,
      todayStatistics => LocaleKey.todayStatistics.tr,
      manageMessages => LocaleKey.manageMessages.tr,
      payments => LocaleKey.payments.tr,
      termsAndPolicy => LocaleKey.termsAndPolicy.tr,
      about => LocaleKey.about.tr,
      logout => LocaleKey.logout.tr,
    };
  }

  IconData get icon {
    return switch (this) {
      socialLogin => Icons.login,
      todayStatistics => Icons.trending_up,
      manageMessages => Icons.chat_outlined,
      payments => Icons.paid_outlined,
      termsAndPolicy => Icons.gpp_good_outlined,
      about => Icons.gpp_maybe_outlined,
      logout => Icons.logout,
    };
  }
}
