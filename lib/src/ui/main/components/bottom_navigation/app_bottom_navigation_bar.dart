import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:keepup/src/enums/bottom_nav_type.dart';
import 'package:keepup/src/ui/main/interactor/main_bloc.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      buildWhen: (previous, current) => previous.currentPage != current.currentPage,
      builder: (context, state) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: state.currentPage.index,
          onTap: (index) {
            final page = BottomNavType.values[index];
            Get.find<MainBloc>().add(MainEvent.onBottomNavigationPageTapped(page));
          },
          items: BottomNavType.values.map((page) {
            return BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  page.icon,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).bottomNavigationBarTheme.selectedItemColor!,
                    BlendMode.srcIn,
                  ),
                  height: 20,
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  page.icon,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).bottomNavigationBarTheme.unselectedItemColor!,
                    BlendMode.srcIn,
                  ),
                  height: 20,
                ),
              ),
              label: page.name.tr,
            );
          }).toList(),
        );
      },
    );
  }
}
