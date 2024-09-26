import 'dart:io';

import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';

class AppGridItem extends StatelessWidget {
  final String avatarUrl;
  final File? avatarFile;
  final String title;
  final Color? titleColor;
  final DateTime? expiration;
  final VoidCallback? onPressed;
  final VoidCallback? onRemovedPressed;

  const AppGridItem({
    super.key,
    this.avatarUrl = '',
    this.avatarFile,
    this.title = '',
    this.titleColor,
    this.expiration,
    this.onPressed,
    this.onRemovedPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      margin: const EdgeInsets.all(2.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          GestureDetector(
            onTap: onPressed,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: expiration?.urgentColor ?? AppColors.grey350,
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(
                        color: AppColors.grey350,
                        width: 2,
                      ),
                    ),
                    padding: const EdgeInsets.all(3),
                    child: AppCircleAvatar(
                      radius: 20,
                      url: avatarUrl,
                      file: avatarFile,
                      text: title,
                      backgroundColor: AppColors.grey350,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: context.appTextTheme.medium12.copyWith(
                    color: titleColor ?? Theme.of(context).colorScheme.primary,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          if (onRemovedPressed != null)
            Positioned(
              top: 0,
              right: 0,
              child: GestureDetector(
                onTap: onRemovedPressed,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.grey600,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(4),
                  child: Icon(
                    Icons.close,
                    color: Theme.of(context).colorScheme.primary,
                    size: 16,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
