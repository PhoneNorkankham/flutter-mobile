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
    return BlocProvider(
      create: (_) => Get.find<HomeBloc>()..add(const HomeEvent.initial()),
      child: BlocListener<HomeBloc, HomeState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            pageCommandListeners(pageCommand);
            Get.find<HomeBloc>().add(const HomeEvent.clearPageCommand());
          }
        },
        child: const HomeView(),
      ),
    );
  }
}
