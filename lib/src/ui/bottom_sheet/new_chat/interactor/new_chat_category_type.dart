import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';

enum NewChatCategoryType {
  newGroup,
  addContactsToGroup,
  newContact;

  String get title {
    return switch (this) {
      newGroup => LocaleKey.newGroup.tr,
      addContactsToGroup => LocaleKey.addContactsToGroup.tr,
      newContact => LocaleKey.newContact.tr,
    };
  }

  IconData get icon {
    return switch (this) {
      newGroup => Icons.group,
      addContactsToGroup => Icons.group_add,
      newContact => Icons.person_add,
    };
  }
}
