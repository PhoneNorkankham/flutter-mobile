import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_initicon/flutter_initicon.dart';
import 'package:keepup/src/core/managers/custom_image_cache_manager.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/extensions/string_extensions.dart';

class AppCircleAvatar extends StatelessWidget {
  final double radius;
  final String url;
  final File? file;
  final String text;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool placeholderDisabled;

  const AppCircleAvatar({
    super.key,
    required this.radius,
    required this.url,
    this.file,
    this.text = '',
    this.backgroundColor,
    this.foregroundColor,
    this.placeholderDisabled = false,
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

    return CircleAvatar(
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
    );
  }
}
