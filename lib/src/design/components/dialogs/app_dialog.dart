import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/extensions/scope_extensions.dart';
import 'package:keepup/src/extensions/string_extensions.dart';

class AppDialog extends StatelessWidget {
  final String message;
  final String? title;
  final String? confirmTitle;
  final String? cancelTitle;
  final VoidCallback? onConfirmed;
  final VoidCallback? onCancelled;
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

  const AppDialog({
    super.key,
    required this.message,
    this.title,
    this.confirmTitle,
    this.cancelTitle,
    this.onConfirmed,
    this.onCancelled,
    this.centerMessage = false,
    this.content,
    this.contentPadding,
    this.confirmButtonType = AppButtonType.primary,
    this.cancelButtonType = AppButtonType.outlined,
    this.actionsPaddingHorizontal,
    this.actionRadius,
    this.actionsBottomPadding,
    this.actionMaxWith,
    this.onClosed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      contentPadding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      actionsPadding: EdgeInsets.symmetric(horizontal: actionsPaddingHorizontal ?? 30)
          .copyWith(bottom: actionsBottomPadding ?? 35),
      insetPadding: const EdgeInsets.symmetric(horizontal: 12),
      actionsOverflowAlignment: OverflowBarAlignment.start,
      actionsAlignment: MainAxisAlignment.spaceAround,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: Container(
        decoration: const BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        ),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: title?.let((self) => _Title(title: self, onClose: onClosed)),
      ),
      content: SizedBox(
        width: Get.width,
        child: content ??
            Text(
              message,
              style: context.appTextTheme.medium16.copyWith(color: AppColors.primaryDark),
              textAlign: centerMessage ? TextAlign.center : TextAlign.left,
            ),
      ),
      actions: confirmTitle?.let((self) => [
            _Actions(
              actionMaxWith: actionMaxWith ?? 234,
              cancelTitle: cancelTitle,
              confirmTitle: self,
              onConfirmed: onConfirmed,
              onCancelled: onCancelled,
              actionRadius: actionRadius,
              confirmButtonType: confirmButtonType,
              cancelButtonType: cancelButtonType,
            )
          ]),
    );
  }
}

class _Title extends StatelessWidget {
  final String title;
  final VoidCallback? onClose;

  const _Title({required this.title, this.onClose});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: context.appTextTheme.medium24.copyWith(color: AppColors.white),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            constraints: const BoxConstraints(),
            padding: const EdgeInsets.all(8.0).copyWith(right: 13),
            icon: const Icon(
              Icons.close,
              color: AppColors.white,
            ),
            onPressed: onClose ?? () => Get.back(result: false),
          ),
        ),
      ],
    );
  }
}

class _Actions extends StatelessWidget {
  final double? actionRadius;
  final String? cancelTitle;
  final String confirmTitle;
  final VoidCallback? onCancelled;
  final VoidCallback? onConfirmed;
  final AppButtonType confirmButtonType;
  final AppButtonType cancelButtonType;
  final double actionMaxWith;

  const _Actions({
    this.actionRadius,
    this.cancelTitle,
    required this.confirmTitle,
    this.onCancelled,
    this.onConfirmed,
    this.confirmButtonType = AppButtonType.primary,
    this.cancelButtonType = AppButtonType.whitePrimary,
    this.actionMaxWith = 234,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!cancelTitle.isNullOrEmpty) ...[
          Expanded(
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 234, minHeight: 56),
                child: AppButton(
                  onPressed: onCancelled ?? () => Get.back(result: false),
                  title: cancelTitle!,
                  buttonType: cancelButtonType,
                  radius: actionRadius,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
        Expanded(
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: actionMaxWith, minHeight: 56),
              child: AppButton(
                onPressed: onConfirmed ?? () => Get.back(result: true),
                title: confirmTitle,
                buttonType: confirmButtonType,
                radius: actionRadius,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
