import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/bottom_navigation/app_bottom_navigation_bar.dart';
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
            body: IndexedStack(
              index: pages.keys.toList().indexOf(state.type),
              children: pages.values.toList(),
            ),
            bottomNavigationBar: AppBottomNavigationBar(selectedType: state.type),
          ),
        );
      },
    );
  }

  Widget _createPage(BottomNavType type, BuildContext context) {
    type.bindings.dependencies();
    return pages.putIfAbsent(
      type,
      () => type.page,
    );
  }
}
