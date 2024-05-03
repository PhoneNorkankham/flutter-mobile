import 'package:get/get.dart';
import 'package:keepup/src/ui/contact_detail/mappers/create_contact_state_mapper.dart';

class ContactDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CreateContactStateMapper());
  }
}
