import 'package:flutter/material.dart';

class AppColors {
  /// Primary Colors
  /// Our color palette is built with our core principles and guidelines as its foundation.
  static const primary = Color(0xFFF4F6F9);
  static const primaryDark = Color(0xFF091835);
  static const primaryText = Color(0xFF4F5256);

  /// Neutral Colors
  /// Neutrals with blacks, white, and greys for text, overlays, borders, and other similar components
  static const transparent = Color(0x00000000);
  static const black = Color(0xFF000000);
  static final black25 = const Color(0xFF000000).withOpacity(.25);
  static const white = Color(0xFFFFFFFF);
  static const error = Color(0xFFFF0000);
  static const orange = Color(0xFFFF5722);
  static const tertiary = Color(0xFF86C144);
  static const inputBorder = Color(0xFF8E8E93);
  static const keepUp = Color(0xFF96969A);
  static final darkBlue15 = primaryDark.withOpacity(.15);
  static final darkBlue20 = primaryDark.withOpacity(.20);
  static final darkBlue25 = primaryDark.withOpacity(.25);
  static final darkBlue50 = primaryDark.withOpacity(.5);
  static final darkBlue60 = primaryDark.withOpacity(.6);
  static final darkBlue80 = primaryDark.withOpacity(.8);

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
}
