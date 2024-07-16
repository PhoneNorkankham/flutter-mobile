import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_group.dart';
import 'package:keepup/src/design/components/process_indicators/custom_circular_progress.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/groups/components/group_item.dart';
import 'package:keepup/src/ui/keep_up_today/interactor/keep_up_today_bloc.dart';

class KeepUpTodayGroups extends StatelessWidget {
  const KeepUpTodayGroups({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KeepUpTodayBloc, KeepUpTodayState>(
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading || previous.contacts != current.contacts,
      builder: (context, state) {
        final List<Contact> contacts = state.contacts;
        final KeepUpTodayBloc bloc = context.read();
        return Column(
          children: [
            const SizedBox(height: 28),
            FutureBuilder<List<Group>>(
              future: bloc.getGroupsByContacts(contacts),
              builder: (context, snapshot) {
                final List<Group> groups = snapshot.data ?? [];
                return KeepUpGroup(
                  title: LocaleKey.groups.tr,
                  child: contacts.isNotEmpty
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: groups
                              .map((e) => GroupItem(
                                    group: e,
                                    onPressed: () =>
                                        bloc.add(KeepUpTodayEvent.onGotoGroupDetails(e)),
                                    onKeepUpPressed: () => _onShowKeepUpGroupConfirmDialog(bloc, e),
                                  ))
                              .toList(),
                        )
                      : state.isLoading
                          ? const Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Center(child: CustomCircularProgress()),
                            )
                          : Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Center(
                                child: Text(
                                  LocaleKey.noGroupsNeedKeepUpToday.tr,
                                  style: context.appTextTheme.bold16.copyWith(
                                    color: Theme.of(context).colorScheme.onPrimary,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  void _onShowKeepUpGroupConfirmDialog(KeepUpTodayBloc bloc, Group group) {
    AppDialogs(
      title: LocaleKey.keepUp.tr,
      message: LocaleKey.keepUpGroupConfirm.tr,
      contentPadding: const EdgeInsets.all(34).copyWith(top: 34),
      cancelTitle: LocaleKey.cancel.tr,
      confirmTitle: LocaleKey.keepUp.tr,
      onConfirmed: () {
        bloc.add(KeepUpTodayEvent.onKeepUpGroup(group));
        Get.back();
      },
    ).show();
  }
}
