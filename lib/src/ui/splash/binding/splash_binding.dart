import 'package:get/get.dart';
import 'package:keepup/src/ui/splash/interactor/splash_bloc.dart';
import 'package:keepup/src/ui/splash/usecases/fetch_splash_use_case.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CheckLoggedInUseCase(Get.find()));
    Get.put<SplashBloc>(SplashBloc(
      Get.find(),
      Get.find(),
    ));
  }
}
