import 'package:get/get.dart';
import 'package:keepup/src/ui/group_detail/mappers/create_group_state_mapper.dart';
import 'package:keepup/src/ui/group_detail/mappers/delete_group_state_mapper.dart';
import 'package:keepup/src/ui/group_detail/mappers/get_group_state_mapper.dart';
import 'package:keepup/src/ui/group_detail/mappers/update_group_state_mapper.dart';
import 'package:keepup/src/ui/group_detail/usecases/get_group_use_case.dart';

class GroupDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CreateGroupStateMapper());
    Get.put(UpdateGroupStateMapper());
    Get.put(DeleteGroupStateMapper());
    Get.put(GetGroupUseCase(Get.find()));
    Get.put(GetGroupStateMapper());
  }
}
