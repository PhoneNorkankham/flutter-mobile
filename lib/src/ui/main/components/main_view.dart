import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/app_bars/app_app_bar.dart';
import 'package:keepup/src/design/components/base/app_drawer.dart';
import 'package:keepup/src/design/components/bottom_navigation/app_bottom_navigation_bar.dart';
import 'package:keepup/src/design/components/bottom_navigation/app_floating_action_button.dart';
import 'package:keepup/src/design/components/buttons/menu_button.dart';
import 'package:keepup/src/design/components/process_indicators/loading_full_screen.dart';
import 'package:keepup/src/enums/bottom_nav_type.dart';
import 'package:keepup/src/ui/main/interactor/main_bloc.dart';

class MainView extends StatelessWidget {
  final Map<BottomNavType, Widget> pages = {};

  MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      buildWhen: (previous, current) =>
          previous.type != current.type || previous.isLoading != current.isLoading,
      builder: (context, state) {
        _createPage(state.type, context);
        return LoadingFullScreen(
          loading: state.isLoading,
          child: Scaffold(
            endDrawer: const AppDrawer(),
            appBar: AppAppBar(
              title: state.type.title,
              actions: const [MenuButton()],
            ),
            body: IndexedStack(
              index: pages.keys.toList().indexOf(state.type),
              children: pages.values.toList(),
            ),
            bottomNavigationBar: AppBottomNavigationBar(selectedType: state.type),
            floatingActionButton: const AppFloatingActionButton(),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          ),
        );
      },
    );
  }

  Widget _createPage(BottomNavType type, BuildContext context) {
    return pages.putIfAbsent(
      type,
      () => type.page,
    );
  }
}
