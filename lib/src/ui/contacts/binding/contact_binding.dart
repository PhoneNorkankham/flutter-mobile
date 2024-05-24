import 'package:get/get.dart';
import 'package:keepup/src/ui/contacts/interactor/contact_bloc.dart';

class ContactBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ContactBloc(
      Get.find(),
      Get.find(),
    ));
  }
}
