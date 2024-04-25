import 'package:get/get.dart';
import 'package:keepup/src/ui/contact_detail/interactor/contact_detail_bloc.dart';

class ContactDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ContactDetailBloc());
  }
}
