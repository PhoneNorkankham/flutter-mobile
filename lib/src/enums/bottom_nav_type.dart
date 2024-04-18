import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/utils/app_assets.dart';

enum BottomNavType {
  today,
  keepupSoon,
  contacts,
  groups;

  String get name {
    switch (this) {
      case BottomNavType.today:
        return LocaleKey.today.tr;
      case BottomNavType.keepupSoon:
        return LocaleKey.keepupSoon.tr;
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
      case BottomNavType.keepupSoon:
        return AppAssets.ic_filter_svg;
      case BottomNavType.contacts:
        return AppAssets.ic_filter_svg;
      case BottomNavType.groups:
        return AppAssets.ic_filter_svg;
    }
  }

  // Bindings get bindings {
  //   switch (this) {
  //     case BottomNavType.today:
  //       return HomeBinding();
  //     case BottomNavType.keepupSoon:
  //       return HomeBinding();
  //     case BottomNavType.contacts:
  //       return HomeBinding();
  //     case BottomNavType.groups:
  //       return HomeBinding();
  //   }
  // }
}
