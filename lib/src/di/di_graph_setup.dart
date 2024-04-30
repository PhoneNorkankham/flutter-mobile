import 'package:get/get.dart';
import 'package:keepup/src/core/managers/connectivity_manager.dart';
import 'package:keepup/src/core/managers/navigator_manager.dart';
import 'package:keepup/src/core/managers/supabase_manager.dart';
import 'package:keepup/src/core/remote/dio_http_client.dart';
import 'package:keepup/src/locale/translation_manager.dart';
import 'package:keepup/src/utils/app_api_config.dart';
import 'package:keepup/src/utils/app_shared.dart';

part 'environment_module.dart';
part 'register_api_module.dart';
part 'register_core_module.dart';
part 'register_manager_module.dart';
part 'register_repositories_module.dart';
part 'register_use_cases_module.dart';

Future<void> setupDependenciesGraph() async {
  // load all global settings
  await _initializeEnvironment();

  // Core Dependencies
  await _registerCoreModule();

  // API Services Dependencies
  _registerApiModule();

  // Repositories Dependencies
  await _registerRepositoriesModule();

  // Managers Dependencies
  _registerManagersModule();

  // UseCases Dependencies
  _registerUseCasesModule();
}
