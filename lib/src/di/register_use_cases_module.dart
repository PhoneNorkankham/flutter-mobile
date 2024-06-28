part of 'di_graph_setup.dart';

void _registerUseCasesModule() {
  Get.put(GetLoggedInDataUseCase(Get.find()));
  Get.put(CreateDefaultGroupsUseCase(Get.find()));
  Get.put(CreateContactUseCase(Get.find()));
  Get.put(UpdateContactUseCase(Get.find()));
  Get.put(DeleteContactUseCase(Get.find()));
  Get.put(CreateGroupUseCase(Get.find()));
  Get.put(UpdateGroupUseCase(Get.find()));
  Get.put(DeleteGroupUseCase(Get.find()));
  Get.put(UploadAvatarUseCase(Get.find()));
  Get.put(AddContactsUseCase(Get.find(), Get.find()));
}
