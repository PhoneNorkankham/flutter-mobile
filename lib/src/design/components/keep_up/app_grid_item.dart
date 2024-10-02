import 'dart:io';

import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';

class AppGridItem extends StatelessWidget {
  final String avatarUrl;
  final File? avatarFile;
  final String title;
  final Color? titleColor;
  final double? moonPercent;
  final int? expirationDay;
  final VoidCallback? onPressed;
  final VoidCallback? onRemovedPressed;
  final double? width;

  const AppGridItem({
    super.key,
    this.avatarUrl = '',
    this.avatarFile,
    this.title = '',
    this.titleColor,
    this.moonPercent,
    this.expirationDay,
    this.onPressed,
    this.onRemovedPressed,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = width ?? (screenWidth - 80) / 3;

    return Container(
      width: itemWidth,
      margin: const EdgeInsets.all(4.0),
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
                  child: AppCircleAvatar(
                    radius: itemWidth * 0.8 / 2,
                    url: avatarUrl,
                    file: avatarFile,
                    text: title,
                    moonPercent: moonPercent,
                    expirationDay: expirationDay,
                    backgroundColor: AppColors.grey350,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: context.appTextTheme.medium14.copyWith(
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
                    size: 20,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
