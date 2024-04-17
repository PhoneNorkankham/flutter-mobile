import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/app_text_theme.dart';

class AppTabBarTheme {
  static TabBarTheme tabBarThemeData(AppTextTheme appTextTheme) {
    return TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: AppColors.tealBlue,
      labelColor: AppColors.tealBlue,
      labelStyle: appTextTheme.medium16,
      unselectedLabelColor: AppColors.grey600,
      unselectedLabelStyle: appTextTheme.medium16,
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(width: 3.0, strokeAlign: BorderSide.strokeAlignCenter),
      ),
    );
  }
}
