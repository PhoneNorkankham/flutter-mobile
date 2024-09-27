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
      groups => LocaleKey.noGroupsNeedKeepUpThisWeek.tr,
      individual => LocaleKey.noContactsNeedKeepUpThisWeek.tr,
    };
  }

  String get inAMonthEmptyMessage {
    return switch (this) {
      groups => LocaleKey.noGroupsNeedKeepUpThisMonth.tr,
      individual => LocaleKey.noContactsNeedKeepUpThisMonth.tr,
    };
  }
}
