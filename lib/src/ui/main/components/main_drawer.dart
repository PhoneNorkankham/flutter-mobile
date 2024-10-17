import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/app_drawer_type.dart';
import 'package:keepup/src/ui/main/interactor/main_bloc.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final double topPadding = MediaQuery.viewPaddingOf(context).top;
    final double bottomPadding = MediaQuery.viewPaddingOf(context).bottom;
    return BlocBuilder<MainBloc, MainState>(
      buildWhen: (previous, current) => previous.loggedInData != current.loggedInData,
      builder: (context, state) {
        List<AppDrawerType> items = [...AppDrawerType.values];
        if (state.loggedInData.isAnonymous) {
          items.removeWhere((e) => e == AppDrawerType.logout);
        } else {
          items.removeWhere((e) => e == AppDrawerType.socialLogin);
        }

        return Drawer(
          child: ListView(
            padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
            children: [
              const SizedBox(height: 40),
              const Center(child: AppCircleAvatar(url: '', radius: 35)),
              const SizedBox(height: 10),
              Text(
                state.loggedInData.userData?.name ?? '',
                style: context.appTextTheme.bold18.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ...items.map((e) => ListTile(
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
      },
    );
  }
}
