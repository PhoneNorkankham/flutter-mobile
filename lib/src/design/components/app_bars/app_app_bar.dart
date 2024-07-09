import 'package:flutter/material.dart';
import 'package:keepup/src/design/components/buttons/app_back_button.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/extensions/scope_extensions.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  final bool implyLeading;
  final bool onlyIconLeading;
  final double? titleSpacing;
  final VoidCallback? onBackPressed;

  const AppAppBar({
    super.key,
    this.title,
    this.onlyIconLeading = false,
    this.actions,
    this.implyLeading = false,
    this.titleSpacing = 27,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: implyLeading
          ? AppBackButton(
              onPressed: onBackPressed,
              onlyIconLeading: onlyIconLeading,
            )
          : null,
      automaticallyImplyLeading: false,
      centerTitle: true,
      actions: actions,
      leadingWidth: implyLeading
          ? onlyIconLeading
              ? 60
              : 100
          : 0,
      elevation: 6.0,
      shadowColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
      titleSpacing: implyLeading ? 0 : titleSpacing,
      title: title?.let((self) => Text(self, style: context.appTextTheme.bold18)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
