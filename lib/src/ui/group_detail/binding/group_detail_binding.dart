import 'package:get/get.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';

class GroupDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GroupDetailBloc());
  }
}
