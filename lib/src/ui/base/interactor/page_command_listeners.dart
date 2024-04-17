import 'package:get/get.dart';
import 'package:keepup/src/core/managers/navigator_manager.dart';
import 'package:keepup/src/design/components/dialogs/app_dialogs.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/design/components/toasts/app_toasts.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';

void pageCommandListeners(PageCommand pageCommand) {
  if (pageCommand is PageCommandDialog) {
    _dialogListeners(pageCommand);
  } else if (pageCommand is PageCommandNavigation) {
    _navigationListeners(pageCommand);
  } else if (pageCommand is PageCommandMessage) {
    _messageListeners(pageCommand);
  }
}

void _messageListeners(PageCommandMessage pageCommand) {
  pageCommand.when(
    showError: showErrorToast,
    showSuccess: showSuccessToast,
  );
}

void _dialogListeners(PageCommandDialog pageCommand) {
  pageCommand.maybeWhen(
    (dialogType, argument) => null,
    showExpirationSession: () => showSessionExpirationDialog(),
    showError: (msg) => AppDialogs(
      title: LocaleKey.error.tr,
      centerMessage: true,
      message: msg,
      confirmTitle: LocaleKey.close.tr,
    ).show(),
    orElse: () {},
  );
}

void _navigationListeners(PageCommandNavigation pageCommand) {
  final NavigatorManager navigatorManager = Get.find<NavigatorManager>();
  pageCommand.when(
    toPage: (page, argument) => navigatorManager.navigateToPage(
      page,
      args: argument,
    ),
    pushAndRemoveUntilPage: (page, predicate, argument) => navigatorManager.offNamedUntil(
      page,
      predicate,
      arguments: argument,
    ),
    replacePage: (page, argument) => navigatorManager.offToPage(page, args: argument),
    pop: (result, isDialog) => navigatorManager.popBack(result: result, isDialog: isDialog),
    popUntil: (page, popResult) => navigatorManager.popUntil(page: page, popResult: popResult),
  );
}
