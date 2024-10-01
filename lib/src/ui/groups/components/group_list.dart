import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/design/components/keep_up/app_list_item.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/groups/interactor/group_bloc.dart';

class GroupList extends StatelessWidget {
  const GroupList({super.key});

  @override
  Widget build(BuildContext context) {
    final GroupBloc bloc = context.read();
    return BlocBuilder<GroupBloc, GroupState>(
      buildWhen: (previous, current) => previous.getFilterGroups() != current.getFilterGroups(),
      builder: (context, state) {
        final List<Group> groups = state.getFilterGroups();
        // return StreamBuilder<LayoutType>(
        //   stream: Get.find<AppShared>().watchLayoutType,
        //   builder: (context, snapshot) {
        //     if (!snapshot.hasData) {
        //       return const SizedBox();
        //     } else if (groups.isEmpty) {
        //       return Padding(
        //         padding: const EdgeInsets.all(24.0),
        //         child: Center(
        //           child: Text(
        //             LocaleKey.noGroups.tr,
        //             style: context.appTextTheme.bold16.copyWith(
        //               color: Theme.of(context).colorScheme.onPrimary,
        //             ),
        //             textAlign: TextAlign.center,
        //           ),
        //         ),
        //       );
        //     }
        //     final LayoutType layoutType = snapshot.data ?? LayoutType.list;
        //     return layoutType.isGridView
        //         ? SingleChildScrollView(
        //             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16)
        //                 .copyWith(bottom: 56),
        //             child: Wrap(
        //               children: groups
        //                   .map((group) => AppGridItem(
        //                         onPressed: () => bloc.add(GroupEvent.onGotoGroupDetails(group)),
        //                         avatarUrl: group.avatar,
        //                         title: group.name,
        //                         titleColor: Theme.of(context).colorScheme.onPrimary,
        //                       ))
        //                   .toList(),
        //             ),
        //           )
        //         : ListView.separated(
        //             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16)
        //                 .copyWith(bottom: 56),
        //             itemCount: groups.length,
        //             itemBuilder: (context, index) {
        //               final Group group = groups.elementAt(index);
        //               return AppListItem(
        //                 onPressed: () => bloc.add(GroupEvent.onGotoGroupDetails(group)),
        //                 onKeepUpPressed: () => _onShowKeepUpGroupConfirmDialog(bloc, group),
        //                 avatarUrl: group.avatar,
        //                 title: group.name,
        //                 titleColor: Theme.of(context).colorScheme.onPrimary,
        //               );
        //             },
        //             separatorBuilder: (context, index) => const SizedBox(height: 4),
        //           );
        //   },
        // );
        if (groups.isEmpty) {
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Text(
                LocaleKey.noGroups.tr,
                style: context.appTextTheme.bold16.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          );
        }
        return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16).copyWith(bottom: 56),
          itemCount: groups.length,
          itemBuilder: (context, index) {
            final Group group = groups.elementAt(index);
            return AppListItem(
              onPressed: () => bloc.add(GroupEvent.onGotoGroupDetails(group)),
              onKeepUpPressed: () => _onShowKeepUpGroupConfirmDialog(bloc, group),
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
