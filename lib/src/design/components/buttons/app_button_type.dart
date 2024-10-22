import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/extensions/scope_extensions.dart';

enum AppButtonType {
  /// NOTE: Name without color is teal blue as default
  // Height 40
  primary,
  whitePrimary,
  outlined,
  deleteAccount,
  logout,
  keepUp,

  // Height 70
  getStarted;

  bool get isOutlined => this == outlined || this == logout;

  ButtonStyle? buttonStyle(BuildContext context, double? radius) {
    final style =
        isOutlined ? OutlinedButtonTheme.of(context).style : ElevatedButtonTheme.of(context).style;
    final textTheme = context.appTextTheme;
    Color backgroundColor = AppColors.primaryText;
    Color foregroundColor = AppColors.primary;
    Size minimumSize = const Size.fromHeight(40);
    double borderRadius = 10;
    TextStyle textStyle = textTheme.medium16.copyWith(color: foregroundColor);
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 8);

    switch (this) {
      case primary:
        break;
      case whitePrimary:
        backgroundColor = AppColors.primary;
        foregroundColor = AppColors.primaryText;
        break;
      case outlined:
        backgroundColor = AppColors.primary;
        foregroundColor = AppColors.primaryText;
        break;
      case deleteAccount:
        backgroundColor = const Color(0xFFBB3329);
        foregroundColor = Colors.white;
        break;
      case logout:
        backgroundColor = Colors.transparent;
        foregroundColor = const Color(0xFFBB3329);
        break;
      case keepUp:
        backgroundColor = AppColors.keepUp;
        foregroundColor = AppColors.primary;
        break;
      case getStarted:
        borderRadius = 60;
        minimumSize = const Size.fromHeight(70);
        padding = padding.copyWith(bottom: 1);
        textStyle = textTheme.medium20.copyWith(color: foregroundColor);
        break;
    }
    return style?.copyWith(
      textStyle: WidgetStatePropertyAll(textStyle.copyWith(height: 1)),
      foregroundColor: WidgetStatePropertyAll(foregroundColor),
      backgroundColor: backgroundColor.let((self) => WidgetStatePropertyAll(self)),
      minimumSize: WidgetStatePropertyAll(minimumSize),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? borderRadius)),
      ),
      side: WidgetStatePropertyAll(BorderSide(
        color: isOutlined ? foregroundColor : AppColors.transparent,
      )),
      padding: WidgetStatePropertyAll(padding),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      // To bypass Flutter's complex logic that reduces [padding]'s vertical value
      visualDensity: const VisualDensity(),
      overlayColor: backgroundColor.let(
        (self) => WidgetStateProperty.resolveWith<Color>((states) {
          return self.withOpacity(.2);
        }),
      ),
    );
  }
}
