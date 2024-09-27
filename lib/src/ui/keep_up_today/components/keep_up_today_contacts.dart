import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/design/components/keep_up/app_grid_item.dart';
import 'package:keepup/src/design/components/keep_up/app_list_item.dart';
import 'package:keepup/src/design/components/process_indicators/custom_circular_progress.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/layout_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interaction_bottom_sheet.dart';
import 'package:keepup/src/ui/keep_up_today/interactor/keep_up_today_bloc.dart';
import 'package:keepup/src/utils/app_shared.dart';

class KeepUpTodayContacts extends StatelessWidget {
  const KeepUpTodayContacts({super.key});

  @override
  Widget build(BuildContext context) {
    final KeepUpTodayBloc bloc = context.read();
    return BlocBuilder<KeepUpTodayBloc, KeepUpTodayState>(
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading ||
          previous.filteredContacts != current.filteredContacts,
      builder: (context, state) {
        final List<Contact> contacts = state.filteredContacts;
        // return KeepUpGroup(
        //   title: LocaleKey.contacts.tr,
        // child: contacts.isNotEmpty
        return contacts.isNotEmpty
            ? StreamBuilder<LayoutType>(
                stream: Get.find<AppShared>().watchLayoutType,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const SizedBox();
                  }
                  final LayoutType layoutType = snapshot.data ?? LayoutType.list;
                  return layoutType.isGridView
                      ? Wrap(
                          children: contacts
                              .map((contact) => AppGridItem(
                                    onPressed: () => InteractionBottomSheet.show(contact: contact),
                                    avatarUrl: contact.avatar,
                                    title: contact.name,
                                    titleColor: Theme.of(context).colorScheme.onPrimary,
                                    expiration: contact.expiration,
                                  ))
                              .toList(),
                        )
                      : ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: contacts.length,
                          itemBuilder: (context, index) {
                            final Contact contact = contacts.elementAt(index);
                            return AppListItem(
                              onPressed: () => InteractionBottomSheet.show(contact: contact),
                              onKeepUpPressed: () =>
                                  _onShowKeepUpContactConfirmDialog(bloc, contact),
                              avatarUrl: contact.avatar,
                              title: contact.name,
                              titleColor: Theme.of(context).colorScheme.onPrimary,
                              description: contact.groupName ?? '',
                              expiration: contact.expiration,
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(height: 4),
                        );
                },
              )
            : SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: state.isLoading
                    ? const Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Center(child: CustomCircularProgress()),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Center(
                          child: Text(
                            LocaleKey.noContactsNeedKeepUpToday.tr,
                            style: context.appTextTheme.bold16.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
              );
        //    ),
        // );
      },
    );
  }

  void _onShowKeepUpContactConfirmDialog(KeepUpTodayBloc bloc, Contact contact) {
    AppDialogs(
      title: LocaleKey.keepUp.tr,
      message: LocaleKey.keepUpContactConfirm.tr,
      contentPadding: const EdgeInsets.all(34).copyWith(top: 34),
      cancelTitle: LocaleKey.cancel.tr,
      confirmTitle: LocaleKey.keepUp.tr,
      onConfirmed: () {
        bloc.add(KeepUpTodayEvent.onKeepUpContact(contact));
        Get.back();
      },
    ).show();
  }
}
