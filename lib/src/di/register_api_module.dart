part of 'di_graph_setup.dart';

void _registerApiModule() {
  // API Server
  Get.put(RapidapiService(Get.find()));
  Get.put(BingService(Get.find()));
}
