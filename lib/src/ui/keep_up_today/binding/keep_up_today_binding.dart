import 'package:get/get.dart';
import 'package:keepup/src/ui/keep_up_today/interactor/keep_up_today_bloc.dart';

class KeepUpTodayBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(KeepUpTodayBloc());
  }
}
