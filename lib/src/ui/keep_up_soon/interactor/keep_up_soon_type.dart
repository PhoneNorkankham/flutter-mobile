import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';

enum KeepUpSoonType {
  groups,
  individual;

  String get title {
    return switch (this) {
      groups => LocaleKey.groups.tr,
      individual => LocaleKey.individual.tr,
    };
  }

  String get inAWeekEmptyMessage {
    return switch (this) {
      groups => LocaleKey.noGroupsNeedKeepUpInAWeek.tr,
      individual => LocaleKey.noContactsNeedKeepUpInAWeek.tr,
    };
  }

  String get inAMonthEmptyMessage {
    return switch (this) {
      groups => LocaleKey.noGroupsNeedKeepUpInAMonth.tr,
      individual => LocaleKey.noContactsNeedKeepUpInAMonth.tr,
    };
  }
}
