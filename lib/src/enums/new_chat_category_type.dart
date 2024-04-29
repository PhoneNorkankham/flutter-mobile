import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/enums/new_chat_tab_type.dart';
import 'package:keepup/src/locale/locale_key.dart';

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

  NewChatTabType get tabType {
    return switch (this) {
      newGroup => NewChatTabType.addMembers,
      newContact => NewChatTabType.newContact,
    };
  }
}
