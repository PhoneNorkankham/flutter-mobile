import 'package:get/get.dart';
import 'package:keepup/src/ui/keep_up_soon/interactor/keep_up_soon_bloc.dart';

class KeepUpSoonBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(KeepUpSoonBloc(Get.find()));
  }
}
