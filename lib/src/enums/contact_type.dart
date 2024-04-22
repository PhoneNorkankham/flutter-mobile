import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';

enum ContactType {
  newContact,
  contactDetail;

  String get title {
    return switch (this) {
      newContact => LocaleKey.newContact.tr,
      contactDetail => LocaleKey.contactDetail.tr,
    };
  }
}
