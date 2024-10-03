import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/contacts/contact_page.dart';
import 'package:keepup/src/ui/groups/group_page.dart';
import 'package:keepup/src/ui/keep_up_soon/keep_up_soon_page.dart';
import 'package:keepup/src/ui/keep_up_today/keep_up_today_page.dart';
import 'package:keepup/src/utils/app_assets.dart';

enum BottomNavType {
  today,
  upcoming,
  contacts,
  groups;

  String get name {
    switch (this) {
      case BottomNavType.today:
        return LocaleKey.today.tr;
      case BottomNavType.upcoming:
        return LocaleKey.upcoming.tr;
      case BottomNavType.contacts:
        return LocaleKey.contacts.tr;
      case BottomNavType.groups:
        return LocaleKey.groups.tr;
    }
  }

  String get title {
    switch (this) {
      case BottomNavType.today:
        return LocaleKey.today.tr;
      case BottomNavType.upcoming:
        return LocaleKey.upcoming.tr;
      case BottomNavType.contacts:
        return LocaleKey.availableContacts.tr;
      case BottomNavType.groups:
        return LocaleKey.groups.tr;
    }
  }

  String get icon {
    switch (this) {
      case BottomNavType.today:
        return AppAssets.ic_today_svg;
      case BottomNavType.upcoming:
        return AppAssets.ic_soon_svg;
      case BottomNavType.contacts:
        return AppAssets.ic_contacts_svg;
      case BottomNavType.groups:
        return AppAssets.ic_groups_svg;
    }
  }

  Widget get page {
    switch (this) {
      case BottomNavType.today:
        return const KeepUpTodayPage();
      case BottomNavType.upcoming:
        return const KeepUpSoonPage();
      case BottomNavType.contacts:
        return const ContactPage();
      case BottomNavType.groups:
        return const GroupPage();
    }
  }
}
