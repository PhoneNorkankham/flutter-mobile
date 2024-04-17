import 'package:flutter/material.dart';

class AppColors {
  /// Primary Colors
  /// Our color palette is built with our core principles and guidelines as its foundation.
  static const tealBlue = Color(0xFF4555B3);
  static const darkBlue = Color(0xFF091835);
  static const cyan = Color(0xFF5EB9AF);
  static const columbiaBlue = Color(0xFFA0AEFF);
  static const error = Color(0xFFFF0000);
  static const primaryText = Color(0xFF091835);
  static const yellow = Color(0xFFFFB400);
  static const red = Color(0xFFC50000);

  /// Neutral Colors
  /// Neutrals with blacks, white, and greys for text, overlays, borders, and other similar components
  static const black = Color(0xFF000000);
  static final black25 = const Color(0xFF000000).withOpacity(.25);
  static const white = Color(0xFFFFFFFF);
  static const lightCream = Color(0xFFFAFBFE);
  static final darkBlue15 = darkBlue.withOpacity(.15);
  static final darkBlue20 = darkBlue.withOpacity(.20);
  static final darkBlue25 = darkBlue.withOpacity(.25);
  static final darkBlue50 = darkBlue.withOpacity(.5);
  static final darkBlue60 = darkBlue.withOpacity(.6);
  static final darkBlue80 = darkBlue.withOpacity(.8);

  static const transparent = Color(0x00000000);

  /// Secondary Colors
  /// Colors to attract attention or provide an accent color for buttons, visuals, and other states
  static const grey900 = Color(0xFF515151);
  static const grey700 = Color(0xFF7B7B7B);
  static const grey600 = Color(0xFF9C9C9C);
  static const grey400 = Color(0xFFCECECE);
  static const grey350 = Color(0xFFD3D3D3);
  static const grey325 = Color(0xFFD9D9D9);
  static const grey300 = Color(0xFFD7D7D7);
  static const grey250 = Color(0xFFF8F8F8);
  static const grey200 = Color(0xFFECECEC);
  static const grey150 = Color(0xFFE4E4E4);
  static const grey100 = Color(0xFFF2F2F2);
  static const grey50 = Color(0xFFEFEFEF);
  static const grey20 = Color(0xFFFFF9F9);
  static const kakaoYellow = Color(0xFFFEE500);
  static const lightYellow = Color(0xFFFFECBF);
  static const brightCyan = Color(0xFF3ABD98);
  static const lightCyan = Color(0xFFE3FFF8);
  static const lightTeal = Color(0xFFE4E8FF);
  static const lightRed = Color(0xFFFFDBDB);
  static const blandLavender = Color(0xFFEEF0FE);
  static const mediumLavender = Color(0xFFCCD3FA);
  static const redOrange = Color(0xFFFF2929);
  static const peach = Color(0xFFFF7979);

  static final darkBlurGradient = LinearGradient(
    colors: [AppColors.darkBlue, black.withOpacity(0)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const yellowBlueGradient = LinearGradient(
    colors: [AppColors.tealBlue, AppColors.darkBlue],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  /// Box shadows
  static final shadowBlack25 = BoxShadow(
    color: black.withOpacity(.25),
    offset: const Offset(0, 4),
    blurRadius: 4,
  );

  static final shadowYellow36 = BoxShadow(
    color: yellow.withOpacity(.36),
    offset: const Offset(0, 4),
    blurRadius: 4,
  );
}
