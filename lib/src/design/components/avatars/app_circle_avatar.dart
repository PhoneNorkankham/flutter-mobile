import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_initicon/flutter_initicon.dart';
import 'package:keepup/src/core/managers/custom_image_cache_manager.dart';
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
    final Color backgroundColor = this.backgroundColor ?? Theme.of(context).colorScheme.onPrimary;
    final Color foregroundColor = this.foregroundColor ?? Theme.of(context).colorScheme.primary;

    ImageProvider? imageProvider;
    if (file == null && url.isEmpty && text.isNotEmpty) {
      return Initicon(
        text: text,
        size: radius * 2,
        borderRadius: BorderRadius.circular(radius),
        backgroundColor: backgroundColor,
      );
    } else if (file != null) {
      /// Image is from file
      imageProvider = FileImage(file!);
    } else if (url.isNotEmpty && url.isNetworkUri) {
      /// Image is from server
      imageProvider = CachedNetworkImageProvider(url, cacheManager: CustomImageCacheManager());
    }

    final Widget placeholder = Icon(
      Icons.person,
      size: radius * 1.5,
      color: foregroundColor,
    );

    return CircleAvatar(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      radius: radius,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (!placeholderDisabled) placeholder,
          if (imageProvider != null)
            CircleAvatar(
              radius: radius,
              foregroundImage: imageProvider,
              foregroundColor: foregroundColor,
              onForegroundImageError: (exception, stackTrace) => Container(
                color: backgroundColor,
                child: placeholder,
              ),
            ),
        ],
      ),
    );
  }
}
