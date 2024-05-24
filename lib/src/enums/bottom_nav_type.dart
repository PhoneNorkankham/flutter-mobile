import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/contacts/binding/contact_binding.dart';
import 'package:keepup/src/ui/contacts/contact_page.dart';
import 'package:keepup/src/ui/groups/binding/group_binding.dart';
import 'package:keepup/src/ui/groups/group_page.dart';
import 'package:keepup/src/ui/home/binding/home_binding.dart';
import 'package:keepup/src/ui/home/home_page.dart';
import 'package:keepup/src/ui/keep_up_soon/binding/keep_up_soon_binding.dart';
import 'package:keepup/src/ui/keep_up_soon/keep_up_soon_page.dart';
import 'package:keepup/src/ui/keep_up_today/binding/keep_up_today_binding.dart';
import 'package:keepup/src/ui/keep_up_today/keep_up_today_page.dart';
import 'package:keepup/src/utils/app_assets.dart';

enum BottomNavType {
  home,
  today,
  upcoming,
  contacts,
  groups;

  String get name {
    switch (this) {
      case BottomNavType.home:
        return LocaleKey.home.tr;
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

  String get icon {
    switch (this) {
      case BottomNavType.home:
        return AppAssets.ic_home_svg;
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
      case BottomNavType.home:
        return const HomePage();
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

  Bindings get bindings {
    switch (this) {
      case BottomNavType.home:
        return HomeBinding();
      case BottomNavType.today:
        return KeepUpTodayBinding();
      case BottomNavType.upcoming:
        return KeepUpSoonBinding();
      case BottomNavType.contacts:
        return ContactBinding();
      case BottomNavType.groups:
        return GroupBinding();
    }
  }
}
