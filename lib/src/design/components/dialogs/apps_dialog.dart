import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/design/components/dialogs/app_dialog.dart';
import 'package:keepup/src/extensions/scope_extensions.dart';

class AppDialogs {
  final String message;
  final String? title;
  final String? confirmTitle;
  final String? cancelTitle;
  final VoidCallback? onConfirmed;
  final VoidCallback? onCanceled;
  final bool isDismissible;
  final bool centerMessage;
  final Widget? content;
  final EdgeInsets? contentPadding;
  final AppButtonType confirmButtonType;
  final AppButtonType cancelButtonType;
  final double? actionsPaddingHorizontal;
  final double? actionsBottomPadding;
  final double? actionRadius;
  final double? actionMaxWith;
  final VoidCallback? onClosed;

  const AppDialogs({
    this.message = '',
    this.title,
    this.confirmTitle,
    this.cancelTitle,
    this.onConfirmed,
    this.onCanceled,
    this.isDismissible = false,
    this.centerMessage = false,
    this.content,
    this.contentPadding,
    this.confirmButtonType = AppButtonType.primary,
    this.cancelButtonType = AppButtonType.greyPrimary,
    this.actionsPaddingHorizontal,
    this.actionsBottomPadding,
    this.actionRadius,
    this.actionMaxWith = 234,
    this.onClosed,
  });

  Future<dynamic> show() {
    return Get.dialog(
      barrierDismissible: isDismissible,
      barrierColor: Get.context?.let((self) => Theme.of(self).bottomSheetTheme.modalBarrierColor),
      AppDialog(
        title: title,
        message: message,
        cancelTitle: cancelTitle,
        confirmTitle: confirmTitle,
        onCancelled: onCanceled,
        onClosed: onClosed,
        onConfirmed: onConfirmed,
        centerMessage: centerMessage,
        content: content,
        contentPadding: contentPadding,
        confirmButtonType: confirmButtonType,
        cancelButtonType: cancelButtonType,
        actionsPaddingHorizontal: actionsPaddingHorizontal,
        actionsBottomPadding: actionsBottomPadding,
        actionRadius: actionRadius,
        actionMaxWith: actionMaxWith,
      ),
    );
  }
}
