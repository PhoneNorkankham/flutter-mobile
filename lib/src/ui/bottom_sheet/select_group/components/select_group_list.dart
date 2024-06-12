import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_item.dart';
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
        return ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: state.filterGroups.length,
          itemBuilder: (context, index) {
            final Group group = state.filterGroups.elementAt(index);
            return KeepUpItem(
              onPressed: () => AddContactsToGroupBottomSheet.show(group: group).then((value) {
                if (value is PopResult && value.status) Get.back(result: value);
              }),
              name: group.name,
              avatar: group.avatar,
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 4),
        );
      },
    );
  }
}
