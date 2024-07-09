import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_group.dart';
import 'package:keepup/src/design/components/process_indicators/custom_circular_progress.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interaction_bottom_sheet.dart';
import 'package:keepup/src/ui/contacts/components/contact_item.dart';
import 'package:keepup/src/ui/groups/components/group_item.dart';
import 'package:keepup/src/ui/keep_up_soon/interactor/keep_up_soon_bloc.dart';
import 'package:keepup/src/ui/keep_up_soon/interactor/keep_up_soon_type.dart';

class KeepUpSoonInAWeek extends StatelessWidget {
  const KeepUpSoonInAWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KeepUpSoonBloc, KeepUpSoonState>(
      buildWhen: (previous, current) =>
          previous.type != current.type || previous.weekContacts != current.weekContacts,
      builder: (context, state) {
        final KeepUpSoonBloc bloc = context.read();
        List<Widget> children = [];
        if (state.type == KeepUpSoonType.individual) {
          // Add all contacts item to children
          children = [
            ...state.weekContacts.map((e) => ContactItem(
                  contact: e,
                  onPressed: () => InteractionBottomSheet.show(contact: e),
                  onKeepUpPressed: () => _onShowKeepUpContactConfirmDialog(bloc, e),
                ))
          ];
        }
        return FutureBuilder<List<Group>>(
          future: state.type == KeepUpSoonType.groups
              ? bloc.getGroupsByContacts(state.weekContacts)
              : Future.value([]),
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const SizedBox();
            }
            final List<Group> groups = snapshot.data ?? [];
            // Add all groups item to children
            if (state.type == KeepUpSoonType.groups && groups.isNotEmpty) {
              children = [
                ...groups.map((e) => GroupItem(
                      group: e,
                      onPressed: () => bloc.add(KeepUpSoonEvent.onGotoGroupDetails(e)),
                      onKeepUpPressed: () => _onShowKeepUpGroupConfirmDialog(bloc, e),
                    ))
              ];
            }
            return KeepUpGroup(
              title: LocaleKey.inAWeek.tr,
              children: children.isNotEmpty
                  ? children
                  : [
                      state.isLoading
                          ? const Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Center(child: CustomCircularProgress()),
                            )
                          : Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Center(
                                child: Text(
                                  state.type.inAWeekEmptyMessage,
                                  style: context.appTextTheme.bold16.copyWith(
                                    color: Theme.of(context).colorScheme.onPrimary,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                    ],
            );
          },
        );
      },
    );
  }

  void _onShowKeepUpContactConfirmDialog(KeepUpSoonBloc bloc, Contact contact) {
    AppDialogs(
      title: LocaleKey.keepUp.tr,
      message: LocaleKey.keepUpContactConfirm.tr,
      contentPadding: const EdgeInsets.all(34).copyWith(top: 34),
      cancelTitle: LocaleKey.cancel.tr,
      confirmTitle: LocaleKey.keepUp.tr,
      onConfirmed: () {
        bloc.add(KeepUpSoonEvent.onKeepUpContact(contact));
        Get.back();
      },
    ).show();
  }

  void _onShowKeepUpGroupConfirmDialog(KeepUpSoonBloc bloc, Group group) {
    AppDialogs(
      title: LocaleKey.keepUp.tr,
      message: LocaleKey.keepUpGroupConfirm.tr,
      contentPadding: const EdgeInsets.all(34).copyWith(top: 34),
      cancelTitle: LocaleKey.cancel.tr,
      confirmTitle: LocaleKey.keepUp.tr,
      onConfirmed: () {
        bloc.add(KeepUpSoonEvent.onKeepUpGroup(group));
        Get.back();
      },
    ).show();
  }
}
