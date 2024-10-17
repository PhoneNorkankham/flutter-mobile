import 'package:get/get.dart';
import 'package:keepup/src/ui/onboarding/interactor/onboarding_bloc.dart';
import 'package:keepup/src/ui/onboarding/usecases/sign_in_with_anonymous_use_case.dart';
import 'package:keepup/src/ui/onboarding/usecases/sign_in_with_google_use_case.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignInWithAnonymousUseCase(Get.find()));
    Get.put(SignInWithGoogleUseCase(Get.find()));
    Get.put<OnboardingBloc>(OnboardingBloc(
      Get.find(),
      Get.find(),
      Get.find(),
    ));
  }
}
