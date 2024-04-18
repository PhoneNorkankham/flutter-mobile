import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/home/binding/home_binding.dart';
import 'package:keepup/src/utils/app_assets.dart';

enum BottomNavType {
  today,
  keepUpSoon,
  contacts,
  groups;

  String get name {
    switch (this) {
      case BottomNavType.today:
        return LocaleKey.today.tr;
      case BottomNavType.keepUpSoon:
        return LocaleKey.keepUpSoon.tr;
      case BottomNavType.contacts:
        return LocaleKey.contacts.tr;
      case BottomNavType.groups:
        return LocaleKey.groups.tr;
    }
  }

  String get icon {
    switch (this) {
      case BottomNavType.today:
        return AppAssets.ic_filter_svg;
      case BottomNavType.keepUpSoon:
        return AppAssets.ic_filter_svg;
      case BottomNavType.contacts:
        return AppAssets.ic_filter_svg;
      case BottomNavType.groups:
        return AppAssets.ic_filter_svg;
    }
  }

  Bindings get bindings {
    switch (this) {
      case BottomNavType.today:
        return HomeBinding();
      case BottomNavType.keepUpSoon:
        return HomeBinding();
      case BottomNavType.contacts:
        return HomeBinding();
      case BottomNavType.groups:
        return HomeBinding();
    }
  }
}
