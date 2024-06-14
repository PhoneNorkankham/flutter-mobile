import 'dart:io';

import 'package:back_system/back_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/design/components/dialogs/dialog_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/main/components/main_view.dart';
import 'package:keepup/src/ui/main/interactor/main_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: Platform.isIOS,
      onPopInvoked: (didPop) {
        if (didPop || Platform.isIOS) return;
        if (Platform.isAndroid) {
          BackSystem.moveTaskToBack();
        }
      },
      child: BlocProvider(
        create: (_) => Get.find<MainBloc>()..add(const MainEvent.initial()),
        child: BlocListener<MainBloc, MainState>(
          listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
          listener: (context, state) {
            final PageCommand? pageCommand = state.pageCommand;
            if (pageCommand != null) {
              final MainBloc bloc = context.read();
              bloc.add(const MainEvent.clearPageCommand());
              if (pageCommand is PageCommandDialog) {
                pageCommand.maybeWhen(
                  (dialogType, argument) {
                    if (dialogType == DialogType.logout) {
                      AppDialogs(
                        title: LocaleKey.logout.tr,
                        message: LocaleKey.logoutAnonymousConfirm.tr,
                        centerMessage: true,
                        confirmTitle: LocaleKey.logout.tr,
                        cancelTitle: LocaleKey.cancel.tr,
                      ).show().then((value) {
                        if (value is bool && value) {
                          bloc.add(const MainEvent.onConfirmedLogout());
                        }
                      });
                    } else if (dialogType == DialogType.resetData) {
                      AppDialogs(
                        title: LocaleKey.resetData.tr,
                        message: LocaleKey.resetDataConfirm.tr,
                        centerMessage: true,
                        confirmTitle: LocaleKey.resetData.tr,
                        cancelTitle: LocaleKey.cancel.tr,
                      ).show().then((value) {
                        if (value is bool && value) {
                          bloc.add(const MainEvent.onConfirmedResetData());
                        }
                      });
                    } else if (dialogType == DialogType.deleteAccount) {
                      AppDialogs(
                        title: LocaleKey.deleteAccount.tr,
                        message: LocaleKey.deleteAccountConfirm.tr,
                        centerMessage: true,
                        confirmTitle: LocaleKey.deleteAccount.tr,
                        cancelTitle: LocaleKey.cancel.tr,
                      ).show().then((value) {
                        if (value is bool && value) {
                          bloc.add(const MainEvent.onConfirmedDeleteAccount());
                        }
                      });
                    } else {
                      pageCommandListeners(pageCommand);
                    }
                  },
                  orElse: () => pageCommandListeners(pageCommand),
                );
              } else {
                pageCommandListeners(pageCommand);
              }
            }
          },
          child: MainView(),
        ),
      ),
    );
  }
}
