import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/groups/components/group_item.dart';
import 'package:keepup/src/ui/groups/interactor/group_bloc.dart';

class GroupList extends StatelessWidget {
  const GroupList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupBloc, GroupState>(
      buildWhen: (previous, current) => previous.getFilterGroups() != current.getFilterGroups(),
      builder: (context, state) {
        final List<Group> groups = state.getFilterGroups();
        final GroupBloc bloc = context.read<GroupBloc>();
        return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          itemBuilder: (context, index) {
            final Group group = groups.elementAt(index);
            return GroupItem(
              group: group,
              onPressed: () => bloc.add(GroupEvent.onGotoGroupDetails(group)),
              onKeepUpPressed: () => _onShowKeepUpGroupConfirmDialog(bloc, group),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 4),
          itemCount: groups.length,
        );
      },
    );
  }

  void _onShowKeepUpGroupConfirmDialog(GroupBloc bloc, Group group) {
    AppDialogs(
      title: LocaleKey.keepUp.tr,
      message: LocaleKey.keepUpGroupConfirm.tr,
      contentPadding: const EdgeInsets.all(34).copyWith(top: 34),
      cancelTitle: LocaleKey.cancel.tr,
      confirmTitle: LocaleKey.keepUp.tr,
      onConfirmed: () {
        bloc.add(GroupEvent.onKeepUpGroup(group));
        Get.back();
      },
    ).show();
  }
}
