import 'package:get/get.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/utils/app_pages.dart';

Future<dynamic> showSessionExpirationDialog() {
  if (Get.isDialogOpen == true) return Future.value();
  return AppDialogs(
    title: LocaleKey.error.tr,
    message: LocaleKey.loginSessionExpires.tr,
    confirmTitle: LocaleKey.login.tr,
    onConfirmed: () async {
      await Get.offNamedUntil(AppPages.splash, (route) => false);
    },
  ).show();
}

Future<dynamic> showConfirmDialog(
  String? message, {
  String? title,
  String? confirmTitle,
  void Function()? onConfirmed,
  String? cancelTitle,
  void Function()? onCanceled,
  bool? isDismissible,
}) {
  if (message == null || message.isEmpty) return Future.value();
  if (Get.isDialogOpen == true) return Future.value();
  return AppDialogs(
    title: title,
    message: message,
    confirmTitle: confirmTitle,
    onConfirmed: onConfirmed,
    cancelTitle: cancelTitle,
    onCanceled: onCanceled,
    isDismissible: isDismissible ?? false,
  ).show();
}
