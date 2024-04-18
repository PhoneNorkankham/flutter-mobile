import 'package:flutter/material.dart';
import 'package:keepup/src/design/components/buttons/app_back_button.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/extensions/scope_extensions.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  final bool implyLeading;
  final double? titleSpacing;
  final TextStyle? titleTextStyle;
  final VoidCallback? onBackPressed;

  const AppAppBar({
    super.key,
    this.title,
    this.actions,
    this.implyLeading = false,
    this.titleSpacing = 27,
    this.titleTextStyle,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: implyLeading ? AppBackButton(onPressed: onBackPressed) : null,
      automaticallyImplyLeading: false,
      centerTitle: true,
      actions: actions,
      leadingWidth: implyLeading ? 100 : 0,
      titleSpacing: implyLeading ? 0 : titleSpacing,
      title: title?.let((self) => Text(
            self,
            style: titleTextStyle ??
                context.appTextTheme.bold16.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
