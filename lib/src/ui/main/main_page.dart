import 'dart:io';

import 'package:back_system/back_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
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
              pageCommandListeners(pageCommand);
            }
          },
          child: MainView(),
        ),
      ),
    );
  }
}
