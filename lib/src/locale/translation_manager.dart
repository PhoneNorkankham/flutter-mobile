import 'dart:ui';

import 'package:get/get.dart';
import 'package:keepup/src/locale/lang_en.dart';
import 'package:keepup/src/utils/app_shared.dart';

class TranslationManager extends Translations {
  final AppShared appShared;
  late Locale _locale;

  // Get current locate
  Locale get locale {
    return _locale;
  }

  // constructor
  TranslationManager(this.appShared) {
    _initLanguageCodeFromCached();
  }

  /// convert string to Locate
  Locale? _convertStringToLocale(String locate) =>
      appLocales.firstWhereOrNull((element) => element.languageCode == locate);

  // Init language code when load app
  _initLanguageCodeFromCached() async {
    // Get language from cache
    String cachedLanguage = appShared.languageCode;
    if (cachedLanguage.isEmpty) {
      // If cache null set default locale
      _locale = appLocales.contains(Get.deviceLocale)
          ? (Get.deviceLocale ?? fallbackLocaleUS) // default with device locate
          : fallbackLocaleUS; // default Kr

      // save to Hive
      appShared.setLanguageCode(_locale.languageCode);
    } else {
      _locale = _convertStringToLocale(cachedLanguage) ?? fallbackLocaleUS;
    }
  }

  static Locale fallbackLocaleUS = const Locale('en', 'US');

  List<Locale> appLocales = [
    fallbackLocaleUS,
  ];

  /// Support translate language
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUs,
      };

  /// Update [locale] to GetX and AppShared.
  Future<void> updateLocale(Locale locale) async {
    // update to getX
    Get.updateLocale(locale);

    // update to Hive
    await appShared.setLanguageCode(locale.languageCode);

    // update to global variable
    _locale = locale;
  }

  Locale getLocale(String languageCode) {
    if (fallbackLocaleUS.languageCode == languageCode) {
      return fallbackLocaleUS;
    } else {
      return fallbackLocaleUS;
    }
  }
}
