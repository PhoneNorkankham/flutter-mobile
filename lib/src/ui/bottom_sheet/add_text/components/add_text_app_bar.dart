import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';

class AddTextAppBar extends StatelessWidget {
  final String title;
  final VoidCallback? onSavePressed;

  const AddTextAppBar({super.key, required this.title, this.onSavePressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            title,
            style: context.appTextTheme.bold18.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          children: [
            const SizedBox(width: 8),
            TextButton(
              onPressed: () => Get.back(),
              child: Text(
                LocaleKey.cancel.tr,
                style: context.appTextTheme.bold14.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: onSavePressed,
              child: Text(
                LocaleKey.save.tr,
                style: context.appTextTheme.bold14.copyWith(
                  color: Theme.of(context)
                      .colorScheme
                      .onPrimary
                      .withOpacity(onSavePressed == null ? 0.5 : 1),
                ),
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ],
    );
  }
}
