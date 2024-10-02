import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';

class AppListItem extends StatelessWidget {
  final String avatarUrl;
  final File? avatarFile;
  final String title;
  final Color? titleColor;
  final String description;
  final double? moonPercent;
  final int? expirationDay;
  final VoidCallback? onPressed;
  final VoidCallback? onKeepUpPressed;

  const AppListItem({
    super.key,
    this.avatarUrl = '',
    this.avatarFile,
    this.title = '',
    this.titleColor,
    this.description = '',
    this.moonPercent,
    this.expirationDay,
    this.onPressed,
    this.onKeepUpPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          children: [
            AppCircleAvatar(
              radius: 22,
              url: avatarUrl,
              file: avatarFile,
              text: title,
              moonPercent: moonPercent,
              expirationDay: expirationDay,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.appTextTheme.bold16,
                  ),
                  if (description.isNotEmpty)
                    Text(
                      description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.appTextTheme.medium16,
                    ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            if (onKeepUpPressed != null)
              SizedBox(
                width: 100,
                child: AppButton(
                  onPressed: onKeepUpPressed,
                  buttonType: AppButtonType.keepUp,
                  title: LocaleKey.keepUp.tr,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
