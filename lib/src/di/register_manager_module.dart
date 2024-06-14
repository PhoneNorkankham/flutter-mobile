part of 'di_graph_setup.dart';

void _registerManagersModule() {
  Get.put(NavigatorManager());
  Get.put(PermissionManager());
  Get.put(TranslationManager(Get.find()));
  Get.put(SupabaseManager());
}
