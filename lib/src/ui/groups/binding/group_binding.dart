import 'package:get/get.dart';
import 'package:keepup/src/ui/groups/interactor/group_bloc.dart';

class GroupBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GroupBloc());
  }
}
