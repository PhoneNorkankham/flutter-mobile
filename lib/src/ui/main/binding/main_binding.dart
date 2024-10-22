import 'package:get/get.dart';
import 'package:keepup/src/ui/main/interactor/main_bloc.dart';
import 'package:keepup/src/ui/main/usecases/confirm_linked_identity_use_case.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ConfirmLinkedIdentityUseCase(Get.find()));
    Get.put(MainBloc(
      Get.find(),
      Get.find(),
    ));
  }
}
