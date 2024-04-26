import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/utils/app_pages.dart';

enum NewChatCategoryType {
  newGroup,
  newContact;

  String get title {
    return switch (this) {
      newGroup => LocaleKey.newGroup.tr,
      newContact => LocaleKey.newContact.tr,
    };
  }

  IconData get icon {
    return switch (this) {
      newGroup => Icons.group,
      newContact => Icons.person_add,
    };
  }

  String get page {
    return switch (this) {
      newGroup => AppPages.groupDetail,
      newContact => AppPages.contactDetail,
    };
  }
}
