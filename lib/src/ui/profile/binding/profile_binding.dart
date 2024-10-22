import 'package:get/get.dart';
import 'package:keepup/src/ui/profile/interactor/profile_bloc.dart';
import 'package:keepup/src/ui/profile/usecases/update_profile_use_case.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<UpdateProfileUseCase>(UpdateProfileUseCase(Get.find()));
    Get.put<ProfileBloc>(ProfileBloc(
      Get.find(),
      Get.find(),
      Get.find(),
      Get.find(),
      Get.find(),
    ));
  }
}
