import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';

enum MainDrawerType {
  // socialLogin,
  // todayStatistics,
  // manageMessages,
  profile,
  settings,
  termsAndPolicy,
  about;

  String get title {
    return switch (this) {
      // socialLogin => LocaleKey.socialLogin.tr,
      // todayStatistics => LocaleKey.todayStatistics.tr,
      // manageMessages => LocaleKey.manageMessages.tr,
      settings => LocaleKey.settings.tr,
      profile => LocaleKey.profile.tr,
      termsAndPolicy => LocaleKey.termsAndPolicy.tr,
      about => LocaleKey.about.tr,
    };
  }

  IconData get icon {
    return switch (this) {
      // socialLogin => Icons.login,
      // todayStatistics => Icons.trending_up,
      // manageMessages => Icons.chat_outlined,
      settings => Icons.settings_outlined,
      profile => Icons.person,
      about => Icons.gpp_maybe_outlined,
      termsAndPolicy => Icons.gpp_good_outlined,
    };
  }
}
