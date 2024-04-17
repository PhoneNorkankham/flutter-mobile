import 'package:flutter/material.dart';
import 'package:keepup/src/design/app_fonts.dart';

@immutable
class AppTextTheme extends ThemeExtension<AppTextTheme> {
  final TextStyle bold36;
  final TextStyle bold30;
  final TextStyle bold18;
  final TextStyle bold16;
  final TextStyle bold14;
  final TextStyle bold13;
  final TextStyle bold12;
  final TextStyle bold10;
  final TextStyle medium36;
  final TextStyle medium24;
  final TextStyle medium21;
  final TextStyle medium20;
  final TextStyle medium18;
  final TextStyle medium16;
  final TextStyle medium14;
  final TextStyle medium13;
  final TextStyle medium12;
  final TextStyle medium11;
  final TextStyle medium10;
  final TextStyle regular16;
  final TextStyle regular20;
  final TextStyle regular14;
  final TextStyle regular12;

  const AppTextTheme({
    required this.bold36,
    required this.bold30,
    required this.bold18,
    required this.bold16,
    required this.bold14,
    required this.bold13,
    required this.bold12,
    required this.bold10,
    required this.medium24,
    required this.medium21,
    required this.medium20,
    required this.medium18,
    required this.medium16,
    required this.medium14,
    required this.medium13,
    required this.medium12,
    required this.medium11,
    required this.medium10,
    required this.medium36,
    required this.regular20,
    required this.regular16,
    required this.regular14,
    required this.regular12,
  });

  @override
  AppTextTheme copyWith({
    TextStyle? bold36,
    TextStyle? bold30,
    TextStyle? bold18,
    TextStyle? bold16,
    TextStyle? bold14,
    TextStyle? bold13,
    TextStyle? bold12,
    TextStyle? bold10,
    TextStyle? medium24,
    TextStyle? medium21,
    TextStyle? medium20,
    TextStyle? medium18,
    TextStyle? medium16,
    TextStyle? medium14,
    TextStyle? medium13,
    TextStyle? medium12,
    TextStyle? medium11,
    TextStyle? medium10,
    TextStyle? medium36,
    TextStyle? regular20,
    TextStyle? regular16,
    TextStyle? regular14,
    TextStyle? regular12,
  }) {
    return AppTextTheme(
      bold36: bold36 ?? this.bold36,
      bold30: bold30 ?? this.bold30,
      bold18: bold18 ?? this.bold18,
      bold16: bold16 ?? this.bold16,
      bold14: bold14 ?? this.bold14,
      bold13: bold13 ?? this.bold13,
      bold12: bold12 ?? this.bold12,
      bold10: bold10 ?? this.bold10,
      medium24: medium24 ?? this.medium24,
      medium21: medium21 ?? this.medium21,
      medium20: medium20 ?? this.medium20,
      medium18: medium18 ?? this.medium18,
      medium16: medium16 ?? this.medium16,
      medium14: medium14 ?? this.medium14,
      medium13: medium13 ?? this.medium13,
      medium12: medium12 ?? this.medium12,
      medium11: medium11 ?? this.medium11,
      medium10: medium10 ?? this.medium10,
      medium36: medium36 ?? this.medium36,
      regular20: regular20 ?? this.regular20,
      regular16: regular16 ?? this.regular16,
      regular14: regular14 ?? this.regular14,
      regular12: regular12 ?? this.regular12,
    );
  }

  @override
  AppTextTheme lerp(ThemeExtension<AppTextTheme>? other, double t) {
    if (other is! AppTextTheme) {
      return this;
    }
    return AppTextTheme(
      bold36: TextStyle.lerp(bold36, other.bold36, t)!,
      bold30: TextStyle.lerp(bold30, other.bold30, t)!,
      bold18: TextStyle.lerp(bold18, other.bold18, t)!,
      bold16: TextStyle.lerp(bold16, other.bold16, t)!,
      bold14: TextStyle.lerp(bold14, other.bold14, t)!,
      bold13: TextStyle.lerp(bold13, other.bold13, t)!,
      bold12: TextStyle.lerp(bold12, other.bold12, t)!,
      bold10: TextStyle.lerp(bold10, other.bold10, t)!,
      medium24: TextStyle.lerp(medium24, other.medium24, t)!,
      medium21: TextStyle.lerp(medium21, other.medium21, t)!,
      medium20: TextStyle.lerp(medium20, other.medium20, t)!,
      medium18: TextStyle.lerp(medium18, other.medium18, t)!,
      medium16: TextStyle.lerp(medium16, other.medium16, t)!,
      medium14: TextStyle.lerp(medium14, other.medium14, t)!,
      medium13: TextStyle.lerp(medium13, other.medium13, t)!,
      medium12: TextStyle.lerp(medium12, other.medium12, t)!,
      medium11: TextStyle.lerp(medium11, other.medium11, t)!,
      medium10: TextStyle.lerp(medium10, other.medium10, t)!,
      medium36: TextStyle.lerp(medium36, other.medium36, t)!,
      regular20: TextStyle.lerp(regular20, other.regular20, t)!,
      regular16: TextStyle.lerp(regular16, other.regular16, t)!,
      regular14: TextStyle.lerp(regular14, other.regular14, t)!,
      regular12: TextStyle.lerp(regular12, other.regular12, t)!,
    );
  }

  @override
  String toString() => 'AppCustomTexts';

  // the light theme
  static final light = AppTextTheme(
    bold36: _bold36,
    bold30: _bold30,
    bold18: _bold18,
    bold16: _bold16,
    bold14: _bold14,
    bold13: _bold13,
    bold12: _bold12,
    bold10: _bold10,
    medium24: _medium24,
    medium21: _medium21,
    medium20: _medium20,
    medium18: _medium18,
    medium16: _medium16,
    medium14: _medium14,
    medium13: _medium13,
    medium12: _medium12,
    medium11: _medium11,
    medium10: _medium10,
    medium36: _medium36,
    regular20: _regular20,
    regular16: _regular16,
    regular14: _regular14,
    regular12: _regular12,
  );

  // the dark theme
  static final dark = AppTextTheme(
    bold36: _bold36,
    bold30: _bold30,
    bold18: _bold18,
    bold16: _bold16,
    bold14: _bold14,
    bold13: _bold13,
    bold12: _bold12,
    bold10: _bold10,
    medium24: _medium24,
    medium21: _medium21,
    medium20: _medium20,
    medium18: _medium18,
    medium16: _medium16,
    medium14: _medium14,
    medium13: _medium13,
    medium12: _medium12,
    medium11: _medium11,
    medium10: _medium10,
    medium36: _medium36,
    regular20: _regular20,
    regular16: _regular16,
    regular14: _regular14,
    regular12: _regular12,
  );
}

String get getFontFamily => AppFonts.fontDMSans;

TextStyle get _bold => TextStyle(
      fontFamily: getFontFamily,
      fontWeight: FontWeight.bold,
      height: 1.3,
    );

TextStyle get _bold36 => _bold.copyWith(fontSize: 36);

TextStyle get _bold30 => _bold.copyWith(fontSize: 30);

TextStyle get _bold18 => _bold.copyWith(fontSize: 18);

TextStyle get _bold16 => _bold.copyWith(fontSize: 16);

TextStyle get _bold14 => _bold.copyWith(fontSize: 14);

TextStyle get _bold13 => _bold.copyWith(fontSize: 13);

TextStyle get _bold12 => _bold.copyWith(fontSize: 12);

TextStyle get _bold10 => _bold.copyWith(fontSize: 10);

TextStyle get _medium => TextStyle(
      fontFamily: getFontFamily,
      fontWeight: FontWeight.w500,
      height: 1.3,
    );

TextStyle get _medium24 => _medium.copyWith(fontSize: 24);

TextStyle get _medium21 => _medium.copyWith(fontSize: 21);

TextStyle get _medium20 => _medium.copyWith(fontSize: 20);

TextStyle get _medium18 => _medium.copyWith(fontSize: 18);

TextStyle get _medium16 => _medium.copyWith(fontSize: 16);

TextStyle get _medium14 => _medium.copyWith(fontSize: 14);

TextStyle get _medium13 => _medium.copyWith(fontSize: 13);

TextStyle get _medium12 => _medium.copyWith(fontSize: 12);

TextStyle get _medium11 => _medium.copyWith(fontSize: 11);

TextStyle get _medium10 => _medium.copyWith(fontSize: 10);

TextStyle get _medium36 => _medium.copyWith(fontSize: 36);

TextStyle get _regular => TextStyle(
      fontFamily: getFontFamily,
      fontWeight: FontWeight.w400,
      height: 1.3,
    );

TextStyle get _regular20 => _regular.copyWith(fontSize: 20);

TextStyle get _regular16 => _regular.copyWith(fontSize: 16);

TextStyle get _regular14 => _regular.copyWith(fontSize: 14);

TextStyle get _regular12 => _regular.copyWith(fontSize: 12);
