import 'package:get/get.dart';
import 'package:keepup/src/ui/settings/interactor/settings_bloc.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SettingsBloc>(SettingsBloc(
      Get.find(),
      Get.find(),
    ));
  }
}
