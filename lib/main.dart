import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/app_theme.dart';
import 'package:keepup/src/di/di_graph_setup.dart';
import 'package:keepup/src/locale/translation_manager.dart';
import 'package:keepup/src/utils/app_constants.dart';
import 'package:keepup/src/utils/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Setup Dependencies Graph
  await setupDependenciesGraph();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TranslationManager translationManager = Get.find();
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        enableLog: true,
        initialRoute: AppPages.splash,
        getPages: AppPages.pages,
        locale: translationManager.locale,
        fallbackLocale: TranslationManager.fallbackLocaleUS,
        translations: translationManager,
        supportedLocales: translationManager.appLocales,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        title: AppConstants.appName,
        theme: AppTheme.lightTheme,
      ),
    );
  }
}
