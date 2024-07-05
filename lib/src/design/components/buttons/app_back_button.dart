import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';

class AppBackButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool onlyIconLeading;

  const AppBackButton({
    super.key,
    this.onPressed,
    this.onlyIconLeading = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ?? () => Navigator.pop(context),
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.arrow_back_ios),
          if (!onlyIconLeading)
            Text(
              LocaleKey.back.tr,
              style: context.appTextTheme.bold16,
            ),
        ],
      ),
    );
  }
}
