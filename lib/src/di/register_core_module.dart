part of 'di_graph_setup.dart';

Future<void> _registerCoreModule() async {
  // Hive (Key, value)
  await Get.putAsync<AppShared>(() => AppShared.instance);

  // Database
  Get.put<AppDatabase>(AppDatabase());

  // Network
  Get.put(RapIdApiClient());
  Get.put(BingClient());
}
