import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';

enum NewChatType {
  newChat,
  newGroup,
  newContact;

  String get title {
    return switch (this) {
      newChat => LocaleKey.newChat.tr,
      newGroup => LocaleKey.newGroup.tr,
      newContact => LocaleKey.newContact.tr,
    };
  }

  IconData get icon {
    return switch (this) {
      newChat => Icons.chat,
      newGroup => Icons.group,
      newContact => Icons.person_add,
    };
  }
}
