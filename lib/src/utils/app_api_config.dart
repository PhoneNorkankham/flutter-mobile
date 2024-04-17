import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:keepup/src/utils/app_constants.dart';

enum Flavor { dev, prod }

class AppApiConfig {
  static Flavor? _flavor;

  static bool get isInitialized => _flavor != null;

  /// The flavor pulled from the package name.
  /// NOTE: Environment().init() MUST be called before flavor is available!
  static Flavor get flavor {
    if (_flavor == null) {
      throw 'Environment has not been initialized!  '
          'Please call Environment.init() before using '
          'flavor or any other variables requiring flavor';
    }
    return _flavor!;
  }

  static bool get developerModeEnabled => kDebugMode || kProfileMode;

  /// Initializes the flavor from either the debug value or the package name
  static Future<void> initialize() async {
    final packageInfo = await PackageInfo.fromPlatform();

    switch (packageInfo.packageName.split('.').last) {
      case 'dev':
        debugPrint('Dev Environment');
        _flavor = Flavor.dev;
        break;
      default:
        debugPrint('Production Environment');
        _flavor = Flavor.prod;
        break;
    }
    debugPrint('AppApiConfig init');
  }

  static String get baseApiUrl => '$apiUrl/api';

  static String get apiUrl {
    switch (flavor) {
      case Flavor.prod:
        return AppConstants.API_PROD_URL;
      case Flavor.dev:
        return AppConstants.API_DEV_URL;
    }
  }

}
