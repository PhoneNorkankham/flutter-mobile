import 'package:get/get.dart';
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
  ];
}

abstract class _Paths {
  static const String splash = "/splash";
  static const String onboarding = "/onboarding";
  static const String main = "/main";
}
