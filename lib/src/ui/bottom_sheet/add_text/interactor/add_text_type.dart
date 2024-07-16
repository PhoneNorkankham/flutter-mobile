import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';

enum AddTextType {
  groupName,
  groupDescription;

  String get title {
    return switch (this) {
      AddTextType.groupName => LocaleKey.groupName.tr,
      AddTextType.groupDescription => LocaleKey.groupDescription.tr,
    };
  }

  String get hint {
    return switch (this) {
      AddTextType.groupName => LocaleKey.addGroupName.tr,
      AddTextType.groupDescription => LocaleKey.addGroupDescription.tr,
    };
  }
}
