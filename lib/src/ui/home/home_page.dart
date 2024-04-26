import 'dart:io';

import 'package:back_system/back_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/home/components/home_view.dart';
import 'package:keepup/src/ui/home/interactor/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Get.find<HomeBloc>();

    return WillPopScope(
      onWillPop: () {
        if (Platform.isAndroid) {
          BackSystem.moveTaskToBack();
          return Future.value(false);
        } else {
          return Future.value(true);
        }
      },
      child: BlocProvider(
        create: (_) => bloc..add(const HomeEvent.initial()),
        child: BlocListener<HomeBloc, HomeState>(
          listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
          listener: (context, state) {
            final PageCommand? pageCommand = state.pageCommand;
            if (pageCommand != null) {
              bloc.add(const HomeEvent.clearPageCommand());
              pageCommandListeners(pageCommand);
            }
          },
          child: const HomeView(),
        ),
      ),
    );
  }
}
