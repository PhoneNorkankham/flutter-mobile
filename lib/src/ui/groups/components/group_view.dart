import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/app_bars/app_app_bar.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/design/components/base/app_drawer.dart';
import 'package:keepup/src/design/components/bottom_navigation/app_bottom_navigation_bar.dart';
import 'package:keepup/src/design/components/buttons/menu_button.dart';
import 'package:keepup/src/design/components/inputs/app_search_input.dart';
import 'package:keepup/src/enums/bottom_nav_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/groups/components/add_group_button.dart';
import 'package:keepup/src/ui/groups/components/group_item.dart';

class GroupView extends StatelessWidget {
  const GroupView({super.key});

  @override
  Widget build(BuildContext context) {
    final groups = [
      Group(name: 'Family'),
      Group(name: 'Meal Ides'),
      Group(name: 'English Class'),
      Group(name: 'Evergrreen'),
      Group(name: 'Friends'),
      Group(name: 'Instant Share'),
      Group(name: 'Business Assist'),
      Group(name: 'Supermajority'),
      Group(name: 'Makeup'),
    ];

    return Scaffold(
      appBar: AppAppBar(
        title: LocaleKey.groups.tr,
        implyLeading: true,
        actions: const [MenuButton()],
      ),
      body: AppBody(
        pageState: PageState.success,
        unFocusWhenTouchOutsideInput: true,
        success: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 26),
            const AppSearchInput(),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                itemBuilder: (context, index) => GroupItem(group: groups.elementAt(index)),
                separatorBuilder: (context, index) => const SizedBox(height: 4),
                itemCount: groups.length,
              ),
            ),
            const SizedBox(height: 15),
            const AddGroupButton(),
            const SizedBox(height: 15),
          ],
        ),
      ),
      endDrawer: const AppDrawer(),
      bottomNavigationBar: const AppBottomNavigationBar(selectedType: BottomNavType.groups),
    );
  }
}
