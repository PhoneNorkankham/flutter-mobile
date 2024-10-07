import 'package:flutter/material.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';

class KeepUpGroup extends StatelessWidget {
  final String title;
  final VoidCallback? onAllSetPressed;
  final Widget child;

  const KeepUpGroup({
    super.key,
    required this.title,
    required this.child,
    this.onAllSetPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: context.appTextTheme.bold16.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        const SizedBox(height: 10),
        child,
      ],
    );
  }
}
