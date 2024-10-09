import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_initicon/flutter_initicon.dart';
import 'package:keepup/src/core/managers/custom_image_cache_manager.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/moon/moon_painter.dart';
import 'package:keepup/src/extensions/string_extensions.dart';

class AppCircleAvatar extends StatelessWidget {
  final double radius;
  final String url;
  final File? file;
  final String text;
  final double? moonPercent;
  final int? expirationDay;

  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool placeholderDisabled;
  final VoidCallback? onPressed;

  const AppCircleAvatar({
    super.key,
    required this.radius,
    required this.url,
    this.file,
    this.text = '',
    this.moonPercent,
    this.expirationDay,
    this.backgroundColor,
    this.foregroundColor,
    this.placeholderDisabled = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = this.backgroundColor ?? AppColors.grey350;
    final Color foregroundColor = this.foregroundColor ?? Theme.of(context).colorScheme.primary;

    ImageProvider? imageProvider;

    if (file != null) {
      /// Image is from file
      imageProvider = FileImage(file!);
    } else if (url.isNotEmpty && url.isNetworkUri) {
      /// Image is from server
      imageProvider = CachedNetworkImageProvider(url, cacheManager: CustomImageCacheManager());
    }

    final Widget placeholder;
    if (text.isNotEmpty) {
      placeholder = Initicon(
        text: text,
        size: radius * 2,
        borderRadius: BorderRadius.circular(radius),
        backgroundColor: backgroundColor,
      );
    } else {
      placeholder = Icon(
        Icons.person,
        size: radius * 1.5,
        color: foregroundColor,
      );
    }

    final String badge = expirationDay == null || expirationDay! > 0 ? '' : '!';
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            radius: radius,
            foregroundImage: imageProvider,
            foregroundColor: foregroundColor,
            backgroundColor: backgroundColor,
            onForegroundImageError: imageProvider == null
                ? null
                : (_, __) => Container(
                      color: backgroundColor,
                      child: placeholderDisabled ? const SizedBox() : placeholder,
                    ),
            child: placeholderDisabled ? const SizedBox() : placeholder,
          ),
          if (moonPercent != null)
            Positioned(
              top: radius <= 22 ? -4 : 0,
              right: radius <= 22 ? -4 : 0,
              child: MoonWidget(
                size: radius <= 22 ? 20 : 24,
                percent: moonPercent!,
              ),
            ),
          if (badge.isNotEmpty)
            Positioned(
              top: radius <= 22 ? -4 : 0,
              right: radius <= 22 ? -4 : 0,
              child: Container(
                width: radius <= 22 ? 20 : 24,
                height: radius <= 22 ? 20 : 24,
                alignment: Alignment.center,
                child: FittedBox(
                  child: Text(
                    badge,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ),
          if (onPressed != null)
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.grey350,
                  borderRadius: BorderRadius.circular(90),
                  border: Border.all(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    width: 2,
                  ),
                ),
                padding: const EdgeInsets.all(3),
                child: Icon(Icons.image, size: radius >= 50 ? 24 : 14),
              ),
            ),
        ],
      ),
    );
  }
}
