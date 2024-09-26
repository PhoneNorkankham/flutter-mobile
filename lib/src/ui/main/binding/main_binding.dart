import 'package:get/get.dart';
import 'package:keepup/src/ui/main/interactor/main_bloc.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBloc(Get.find(), Get.find()));
  }
}
