import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';

enum AddTextType {
  name,
  groupName,
  groupDescription;

  String get title {
    return switch (this) {
      AddTextType.name => LocaleKey.name.tr,
      AddTextType.groupName => LocaleKey.groupName.tr,
      AddTextType.groupDescription => LocaleKey.groupDescription.tr,
    };
  }

  String get hint {
    return switch (this) {
      AddTextType.name => LocaleKey.addYourName.tr,
      AddTextType.groupName => LocaleKey.addGroupName.tr,
      AddTextType.groupDescription => LocaleKey.addGroupDescription.tr,
    };
  }
}
