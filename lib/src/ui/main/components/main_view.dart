import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/enums/bottom_nav_type.dart';
import 'package:keepup/src/ui/main/components/bottom_navigation/app_bottom_navigation_bar.dart';
import 'package:keepup/src/ui/main/interactor/main_bloc.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  Map<BottomNavType, Widget> pages = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<MainBloc, MainState>(
        buildWhen: (previous, current) => previous.currentPage != current.currentPage,
        builder: (context, state) {
          _createPage(state.currentPage, context);
          return IndexedStack(
            index: pages.keys.toList().indexOf(state.currentPage),
            children: pages.values.toList(),
          );
        },
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }

  _createPage(BottomNavType currentPage, BuildContext context) {
    // currentPage.bindings.dependencies();
    switch (currentPage) {
      case BottomNavType.today:
        return pages.putIfAbsent(
          currentPage,
          () => const SizedBox(),
        );
      case BottomNavType.keepupSoon:
        return pages.putIfAbsent(
          currentPage,
          () => const SizedBox(),
        );
      case BottomNavType.contacts:
        return pages.putIfAbsent(
          currentPage,
          () => const SizedBox(),
        );
      case BottomNavType.groups:
        return pages.putIfAbsent(
          currentPage,
          () => const SizedBox(),
        );
    }
  }
}
