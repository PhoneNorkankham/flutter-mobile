import 'package:get/get.dart';
import 'package:keepup/src/ui/onboarding/interactor/onboarding_bloc.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<OnboardingBloc>(OnboardingBloc());
  }
}
