import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/app_drawer_type.dart';
import 'package:keepup/src/ui/main/interactor/main_bloc.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final double topPadding = MediaQuery.viewPaddingOf(context).top;
    final double bottomPadding = MediaQuery.viewPaddingOf(context).bottom;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
        children: [
          const SizedBox(height: 40),
          const AppCircleAvatar(url: '', radius: 35),
          const SizedBox(height: 10),
          Text(
            'Gao Peiris',
            style: context.appTextTheme.bold18.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ...AppDrawerType.values.map((e) => ListTile(
                onTap: () {
                  Get.back();
                  Get.find<MainBloc>().add(MainEvent.onDrawerItemPressed(e));
                },
                leading: Icon(e.icon, color: Theme.of(context).colorScheme.onPrimary),
                title: Text(
                  e.title,
                  style: context.appTextTheme.medium16.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              )),
          const SizedBox(height: 46),
        ],
      ),
    );
  }
}
