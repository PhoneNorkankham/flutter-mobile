import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';

enum GroupType {
  newGroup,
  groupDetail;

  String get title {
    return switch (this) {
      newGroup => LocaleKey.newGroup.tr,
      groupDetail => LocaleKey.groupDetail.tr,
    };
  }
}
