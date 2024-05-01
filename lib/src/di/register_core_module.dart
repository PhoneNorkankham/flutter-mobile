part of 'di_graph_setup.dart';

Future<void> _registerCoreModule() async {
  await Get.putAsync<AppShared>(() => AppShared.instance);
}
