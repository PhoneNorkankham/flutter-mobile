import 'dart:io';

import 'package:flutter/material.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';

class KeepUpItem extends StatelessWidget {
  final String name;
  final String avatar;
  final File? file;
  final Widget? action;
  final VoidCallback? onPressed;
  final DateTime? expiration;

  const KeepUpItem({
    super.key,
    required this.name,
    this.avatar = '',
    this.file,
    this.action,
    this.onPressed,
    this.expiration,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      radius: 10,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        constraints: const BoxConstraints(minHeight: 60),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.white),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: expiration?.urgentColor ?? Theme.of(context).colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(90),
                border: Border.all(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 2,
                ),
              ),
              padding: const EdgeInsets.all(3),
              child: AppCircleAvatar(radius: 15, url: avatar, text: name, file: file),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                name,
                style: context.appTextTheme.bold16.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            const SizedBox(width: 16),
            if (action != null) action!,
          ],
        ),
      ),
    );
  }
}
