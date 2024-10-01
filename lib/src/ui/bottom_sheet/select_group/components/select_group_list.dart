import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/keep_up/app_list_item.dart';
import 'package:keepup/src/design/components/process_indicators/custom_circular_progress.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/bottom_sheet/add_contacts_to_group/add_contacts_to_group_bottom_sheet.dart';
import 'package:keepup/src/ui/bottom_sheet/select_group/interactor/select_group_bloc.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';

class SelectGroupList extends StatelessWidget {
  const SelectGroupList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectGroupBloc, SelectGroupState>(
      buildWhen: (previous, current) =>
          previous.pageState != current.pageState || previous.filterGroups != current.filterGroups,
      builder: (context, state) {
        if (state.pageState == PageState.loading) {
          return const Center(child: CustomCircularProgress());
        }
        final List<Group> groups = state.filterGroups;

        return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemCount: groups.length,
          itemBuilder: (context, index) {
            final Group group = groups.elementAt(index);
            return AppListItem(
              onPressed: () => AddContactsToGroupBottomSheet.show(group).then((value) {
                if (value is PopResult && value.status) Get.back(result: value);
              }),
              avatarUrl: group.avatar,
              title: group.name,
              titleColor: Theme.of(context).colorScheme.onPrimary,
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 4),
        );
      },
    );
  }
}
