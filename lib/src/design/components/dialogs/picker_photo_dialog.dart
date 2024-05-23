import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/utils/app_assets.dart';
import 'package:keepup/src/utils/app_utils.dart';

class PickerPhotoDialog extends StatelessWidget {
  final ValueChanged<File> onSelected;
  final String? cameraTextButton;
  final String? galleryTextButton;

  const PickerPhotoDialog({
    super.key,
    required this.onSelected,
    this.cameraTextButton,
    this.galleryTextButton,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          _buildButtonItem(
            context,
            cameraTextButton ?? LocaleKey.takeAPicture.tr,
            () => _onChoosePhotoPressed(ImageSource.camera),
            SvgPicture.asset(
              AppAssets.ic_camera_svg,
              colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),
            ),
          ),
          const SizedBox(width: 20),
          _buildButtonItem(
            context,
            galleryTextButton ?? LocaleKey.selectAPhoto.tr,
            () => _onChoosePhotoPressed(ImageSource.gallery),
            SvgPicture.asset(
              AppAssets.ic_library_svg,
              colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonItem(
    BuildContext context,
    String text,
    VoidCallback onTap,
    Widget icon,
  ) {
    final medium18 = context.appTextTheme.medium14.copyWith(
      color: Theme.of(context).colorScheme.primary,
    );
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.grey400,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [icon, const SizedBox(height: 12), Text(text, style: medium18)],
          ),
        ),
      ),
    );
  }

  void _onChoosePhotoPressed(ImageSource source) async {
    // Pop snack bar
    await AppUtils.onCloseSnackBar();
    AppUtils.pickImage(source).then((value) {
      if (value != null) {
        if (Get.isDialogOpen ?? false) Get.back();
        onSelected(value);
      }
    });
  }
}
