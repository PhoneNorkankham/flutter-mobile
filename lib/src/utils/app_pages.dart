import 'package:get/get.dart';
import 'package:keepup/src/ui/splash/binding/splash_binding.dart';
import 'package:keepup/src/ui/splash/splash_page.dart';

class AppPages {
  // Roots
  static const String splash = _Paths.splash;

  static final pages = [
    GetPage(
      name: _Paths.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
  ];
}

abstract class _Paths {
  static const String splash = "/splash";
}
