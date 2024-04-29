import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:keepup/src/core/managers/custom_image_cache_manager.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/extensions/string_extensions.dart';

class AppCircleAvatar extends StatelessWidget {
  final String? url;
  final double radius;
  final Color backgroundColor;
  final Color foregroundColor;
  final bool placeholderDisabled;

  const AppCircleAvatar({
    super.key,
    required this.url,
    required this.radius,
    this.backgroundColor = AppColors.white,
    this.foregroundColor = AppColors.primary,
    this.placeholderDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    ImageProvider? imageProvider;
    if (!url.isNullOrEmpty && url?.isNetworkUri == true) {
      /// Image is from server
      imageProvider = CachedNetworkImageProvider(url!, cacheManager: CustomImageCacheManager());
    }

    return CircleAvatar(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      radius: radius,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (!placeholderDisabled)
            Icon(
              Icons.person,
              size: radius * 1.5,
              color: foregroundColor,
            ),
          if (imageProvider != null)
            CircleAvatar(
              radius: radius,
              foregroundImage: imageProvider,
              foregroundColor: foregroundColor,
            ),
        ],
      ),
    );
  }
}
