import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

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
}
