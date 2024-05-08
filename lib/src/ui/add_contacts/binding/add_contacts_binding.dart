import 'package:get/get.dart';
import 'package:keepup/src/ui/add_contacts/mappers/add_contacts_state_mapper.dart';
import 'package:keepup/src/ui/add_contacts/usecases/add_contacts_use_case.dart';

class AddContactsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AddContactsUseCase(Get.find()));
    Get.put(AddContactsStateMapper());
  }
}
