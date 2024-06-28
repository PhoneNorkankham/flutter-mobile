part of 'di_graph_setup.dart';

Future<void> _initializeEnvironment() async {
  // AppApiConfig initialize
  await AppApiConfig.initialize();
  await AppCacheStore.initialize();
  await AppCountryCodes.initialize();
  await SupabaseManager.initialize();
}
