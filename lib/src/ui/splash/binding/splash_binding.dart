import 'package:get/get.dart';
import 'package:keepup/src/ui/splash/interactor/splash_bloc.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashBloc>(SplashBloc(
      Get.find(),
    ));
  }
}
