import 'package:flutter/material.dart';
import 'package:keepup/src/design/themes/extensions/app_text_theme.dart';

extension ThemeExtensions on BuildContext {
  AppTextTheme get appTextTheme => Theme.of(this).extension<AppTextTheme>()!;

}
