part of 'di_graph_setup.dart';

Future<void> _registerRepositoriesModule() async {
  // Repository
  Get.put(SupabaseRepository(Get.find(), Get.find(), Get.find()));
  Get.put(RapidapiRepository(Get.find()));
}
