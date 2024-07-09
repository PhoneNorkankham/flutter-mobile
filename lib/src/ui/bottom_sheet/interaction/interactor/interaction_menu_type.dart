import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';

enum InteractionMenuType {
  edit,
  delete;

  IconData get icon {
    return switch (this) {
      InteractionMenuType.edit => Icons.edit,
      InteractionMenuType.delete => Icons.delete,
    };
  }

  String get title {
    return switch (this) {
      InteractionMenuType.edit => LocaleKey.edit.tr,
      InteractionMenuType.delete => LocaleKey.delete.tr,
    };
  }

  Color? get color => this == InteractionMenuType.delete ? Colors.red : null;
}
