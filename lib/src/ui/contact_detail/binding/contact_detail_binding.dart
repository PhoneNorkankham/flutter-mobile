import 'package:get/get.dart';
import 'package:keepup/src/ui/contact_detail/mappers/create_contact_state_mapper.dart';
import 'package:keepup/src/ui/contact_detail/mappers/get_contact_state_mapper.dart';
import 'package:keepup/src/ui/contact_detail/mappers/update_contact_state_mapper.dart';
import 'package:keepup/src/ui/contact_detail/usecases/get_contact_use_case.dart';

class ContactDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CreateContactStateMapper());
    Get.put(UpdateContactStateMapper());
    Get.put(GetContactUseCase(Get.find()));
    Get.put(GetContactStateMapper());
  }
}
