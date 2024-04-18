import 'dart:io';

import 'package:back_system/back_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/managers/navigator_manager.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/main/components/main_view.dart';
import 'package:keepup/src/ui/main/interactor/main_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MainBloc bloc = Get.find();
    final navigatorManager = Get.find<NavigatorManager>();
    return WillPopScope(
      onWillPop: () {
        if (Platform.isAndroid) {
          if (navigatorManager.currentPage != null &&
              navigatorManager.pagesWithBottomNavigation.contains(navigatorManager.currentPage)) {
            navigatorManager.popBack(popPage: false);
          } else {
            BackSystem.moveTaskToBack();
          }
          return Future.value(false);
        } else {
          return Future.value(true);
        }
      },
      child: BlocProvider(
        create: (BuildContext context) => bloc..add(const MainEvent.onInitial()),
        child: BlocListener<MainBloc, MainState>(
          listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
          listener: (context, state) {
            final PageCommand? pageCommand = state.pageCommand;
            if (pageCommand != null) {
              pageCommandListeners(pageCommand);
              Get.find<MainBloc>().add(const MainEvent.onClearPageCommand());
            }
          },
          child: const MainView(),
        ),
      ),
    );
  }
}
