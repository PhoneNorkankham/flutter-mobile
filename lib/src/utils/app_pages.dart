import 'package:get/get.dart';
import 'package:keepup/src/ui/keep_up_today/binding/keep_up_today_binding.dart';
import 'package:keepup/src/ui/keep_up_today/keep_up_today_page.dart';
import 'package:keepup/src/ui/main/binding/main_binding.dart';
import 'package:keepup/src/ui/main/main_page.dart';
import 'package:keepup/src/ui/onboarding/binding/onboarding_binding.dart';
import 'package:keepup/src/ui/onboarding/onboarding_page.dart';
import 'package:keepup/src/ui/splash/binding/splash_binding.dart';
import 'package:keepup/src/ui/splash/splash_page.dart';

class AppPages {
  // Roots
  static const String splash = _Paths.splash;
  static const String onboarding = _Paths.onboarding;
  static const String main = _Paths.main;
  static const String keepUpToday = _Paths.keepUpToday;

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
      name: _Paths.main,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.keepUpToday,
      page: () => const KeepUpTodayPage(),
      binding: KeepUpTodayBinding(),
    ),
  ];
}

abstract class _Paths {
  static const String splash = "/splash";
  static const String onboarding = "/onboarding";
  static const String main = "/main";
  static const String keepUpToday = "/keepUpToday";
}
