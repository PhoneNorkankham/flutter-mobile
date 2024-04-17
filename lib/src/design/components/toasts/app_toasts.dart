import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/toasts/app_toast_title.dart';
import 'package:keepup/src/enums/toast_type.dart';

void showSuccessToast(String? message) => showToast(message);

void showErrorToast(String? message) => showToast(
      message,
      toastType: ToastType.error,
    );

SnackbarController? showToast(String? message, {ToastType toastType = ToastType.success}) {
  if (message == null || message.isEmpty) return null;
  return Get.rawSnackbar(
    titleText: AppToastTitle(toastType: toastType),
    messageText: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Text(
        message,
        style: const TextStyle(color: Colors.black),
      ),
    ),
    backgroundColor: Colors.white,
    borderRadius: 12,
    duration: const Duration(seconds: 3),
    boxShadows: [
      BoxShadow(
        color: Colors.black.withOpacity(.2),
        offset: const Offset(0, 4),
        blurRadius: 20.0,
      )
    ],
    snackPosition: SnackPosition.TOP,
    dismissDirection: DismissDirection.horizontal,
    icon: toastType.icon,
    margin: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(top: 12.0),
    padding: const EdgeInsets.all(16.0).copyWith(left: 22.0),
    animationDuration: const Duration(milliseconds: 500),
  );
}

SnackbarController? showConnectivityErrorDialog(
  String? message, {
  required bool isConnect,
  Color backgroundColor = Colors.green,
}) {
  if (message == null || message.isEmpty) return null;
  return Get.rawSnackbar(
    message: message,
    backgroundColor: backgroundColor,
    snackPosition: SnackPosition.TOP,
    forwardAnimationCurve: Curves.easeIn,
    reverseAnimationCurve: Curves.easeIn,
    duration: const Duration(seconds: 4),
    animationDuration: const Duration(seconds: 2),
    icon: Icon(
      Icons.wifi,
      color: isConnect ? Colors.green : Colors.black87,
    ),
    isDismissible: false,
  );
}
