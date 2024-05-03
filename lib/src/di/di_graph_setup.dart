import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/managers/connectivity_manager.dart';
import 'package:keepup/src/core/managers/navigator_manager.dart';
import 'package:keepup/src/core/managers/permission_manager.dart';
import 'package:keepup/src/core/managers/supabase_manager.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/locale/translation_manager.dart';
import 'package:keepup/src/use_cases/check_logged_in_use_case.dart';
import 'package:keepup/src/use_cases/create_contact_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_use_case.dart';
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

  // Managers Dependencies
  _registerManagersModule();

  // API Services Dependencies
  _registerApiModule();

  // Repositories Dependencies
  await _registerRepositoriesModule();

  // UseCases Dependencies
  _registerUseCasesModule();
}
