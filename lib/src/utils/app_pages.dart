import 'package:get/get.dart';
import 'package:keepup/src/ui/contact_detail/binding/contact_detail_binding.dart';
import 'package:keepup/src/ui/contact_detail/contact_detail_page.dart';
import 'package:keepup/src/ui/home/binding/home_binding.dart';
import 'package:keepup/src/ui/home/home_page.dart';
import 'package:keepup/src/ui/keep_up_soon/binding/keep_up_soon_binding.dart';
import 'package:keepup/src/ui/keep_up_soon/keep_up_soon_page.dart';
import 'package:keepup/src/ui/keep_up_today/binding/keep_up_today_binding.dart';
import 'package:keepup/src/ui/keep_up_today/keep_up_today_page.dart';
import 'package:keepup/src/ui/onboarding/binding/onboarding_binding.dart';
import 'package:keepup/src/ui/onboarding/onboarding_page.dart';
import 'package:keepup/src/ui/splash/binding/splash_binding.dart';
import 'package:keepup/src/ui/splash/splash_page.dart';

class AppPages {
  // Roots
  static const String splash = _Paths.splash;
  static const String onboarding = _Paths.onboarding;
  static const String home = _Paths.home;
  static const String keepUpToday = _Paths.keepUpToday;
  static const String keepUpSoon = _Paths.keepUpSoon;
  static const String contactDetail = _Paths.contactDetail;

  static final pages = [
    GetPage(
      name: _Paths.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.onboarding,
      page: () => const OnboardingPage(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.keepUpToday,
      page: () => const KeepUpTodayPage(),
      binding: KeepUpTodayBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.keepUpSoon,
      page: () => const KeepUpSoonPage(),
      binding: KeepUpSoonBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.contactDetail,
      page: () => const ContactDetailPage(),
      binding: ContactDetailBinding(),
      transition: Transition.noTransition,
    ),
  ];
}

abstract class _Paths {
  static const String splash = "/splash";
  static const String onboarding = "/onboarding";
  static const String home = "/home";
  static const String keepUpToday = "/keepUpToday";
  static const String keepUpSoon = "/keepUpSoon";
  static const String contactDetail = "/contactDetail";
}
