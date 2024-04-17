part of 'di_graph_setup.dart';

Future<void> _registerCoreModule() async {
  // Hive (Key, value)
  await Get.putAsync<AppShared>(() => AppShared.instance);

  // Network
  Get.put(DioHttpClient(AppApiConfig.baseApiUrl));
}
