import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';

enum NewChatCategoryType {
  createNewGroup,
  addContactsToGroup,
  newContact;

  String get title {
    return switch (this) {
      createNewGroup => LocaleKey.createNewGroup.tr,
      addContactsToGroup => LocaleKey.addContactsToGroup.tr,
      newContact => LocaleKey.newContact.tr,
    };
  }

  IconData get icon {
    return switch (this) {
      createNewGroup => Icons.group,
      addContactsToGroup => Icons.group_add,
      newContact => Icons.person_add,
    };
  }
}
