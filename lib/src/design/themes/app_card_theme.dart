import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_colors.dart';

class AppCardTheme {
  static CardTheme lightThemeData() {
    return CardTheme(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: AppColors.white,
      shadowColor: AppColors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }

  static CardTheme darkThemeData() {
    return CardTheme(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: AppColors.white,
      shadowColor: AppColors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}
