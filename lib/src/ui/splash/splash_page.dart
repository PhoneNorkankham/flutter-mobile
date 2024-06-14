import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/managers/navigator_manager.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/splash/components/splash_view.dart';
import 'package:keepup/src/ui/splash/interactor/splash_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Get.find<SplashBloc>();
    return BlocProvider(
      create: (context) => bloc..add(const SplashEvent.initial()),
      child: BlocListener<SplashBloc, SplashState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            bloc.add(const SplashEvent.clearPageCommand());
            if (pageCommand is SplashPageCommand) {
              pageCommand.when(showDialog: (message) => _showDialog(bloc, message));
            }
            pageCommandListeners(pageCommand);
          }
        },
        child: const SplashView(),
      ),
    );
  }

  void _showDialog(SplashBloc bloc, String message) {
    AppDialogs(
      title: LocaleKey.error.tr,
      centerMessage: true,
      message: message,
      confirmTitle: LocaleKey.check.tr,
      onConfirmed: () {
        Get.find<NavigatorManager>().popBack(isDialog: true);
      },
    ).show();
  }
}
