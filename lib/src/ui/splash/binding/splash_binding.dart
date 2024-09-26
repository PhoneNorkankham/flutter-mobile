import 'package:get/get.dart';
import 'package:keepup/src/ui/onboarding/usecases/create_anonymous_account_use_case.dart';
import 'package:keepup/src/ui/splash/interactor/splash_bloc.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CreateAnonymousAccountUseCase(Get.find()));
    Get.put<SplashBloc>(SplashBloc(
      Get.find(),
      Get.find(),
      Get.find(),
      Get.find(),
    ));
  }
}
