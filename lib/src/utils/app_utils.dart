import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:keepup/src/core/managers/permission_manager.dart';

class AppUtils {
  /// Check is debug mode
  static bool isDebugMode() {
    if (kReleaseMode) {
      return false;
    } else {
      return true;
    }
  }

  void onDialogConfirmPressed(VoidCallback? onConfirmed) async {
    if (Get.isSnackbarOpen) {
      // Wait for snack bar closing then doing pop the dialog
      await SnackbarController.closeCurrentSnackbar();
      await Future.delayed(const Duration(milliseconds: 100));
    }
    Get.back();
    onConfirmed?.call();
  }

  static Future<File?> pickImage(ImageSource source) async {
    bool isGranted = await Get.find<PermissionManager>().checkPermission(
      source == ImageSource.camera ? PermissionType.Camera : PermissionType.Photos,
      showDialog: true,
    );
    if (isGranted) {
      final Future<XFile?> request = ImagePicker().pickImage(
        source: source,
        imageQuality: 60,
        maxWidth: 1024,
        maxHeight: 1024,
      );
      return request.then((pickedFile) {
        if (pickedFile == null) return null;
        return File(pickedFile.path);
      }).catchError((ex) {
        debugPrint('error: $ex');
        return null;
      });
    } else {
      return null;
    }
  }
}
