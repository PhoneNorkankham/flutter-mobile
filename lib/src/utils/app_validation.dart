import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/utils/app_constants.dart';

// Validate input
class AppValidations {
  static String? validateField(String? value) {
    if (value == null) return null;
    final length = value.trim().length;
    if (length == 0) {
      return LocaleKey.thisFieldIsRequired.tr;
    } else {
      return null;
    }
  }

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty || RegExp(AppConstants.patternEmail).hasMatch(email)) {
      return null;
    } else {
      return LocaleKey.emailFormatIsIncorrect.tr;
    }
  }
}
