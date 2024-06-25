import 'package:get/get.dart';
import 'package:keepup/src/ui/onboarding/interactor/onboarding_bloc.dart';
import 'package:keepup/src/ui/onboarding/usecases/create_anonymous_account_use_case.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CreateAnonymousAccountUseCase(Get.find()));
    Get.put<OnboardingBloc>(OnboardingBloc(
      Get.find(),
      Get.find(),
      Get.find(),
    ));
  }
}
