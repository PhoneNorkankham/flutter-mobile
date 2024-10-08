import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/design/components/keep_up/app_grid_item.dart';
import 'package:keepup/src/design/components/keep_up/app_list_item.dart';
import 'package:keepup/src/enums/layout_type.dart';
import 'package:keepup/src/extensions/contact_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interaction_bottom_sheet.dart';
import 'package:keepup/src/ui/keep_up_soon/interactor/keep_up_soon_bloc.dart';
import 'package:keepup/src/utils/app_shared.dart';

class KeepUpSoonContacts extends StatelessWidget {
  final List<Contact> contacts;

  const KeepUpSoonContacts({super.key, required this.contacts});

  @override
  Widget build(BuildContext context) {
    final KeepUpSoonBloc bloc = context.read();
    return StreamBuilder<LayoutType>(
        stream: Get.find<AppShared>().watchLayoutType,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox();
          }
          final LayoutType layoutType = snapshot.data ?? LayoutType.list;
          return layoutType.isGridView
              ? Wrap(
                  children: contacts
                      .map((contact) => FutureBuilder<int>(
                            future: bloc.getDaysOfFrequency(contact.groupId),
                            builder: (context, snapshot) {
                              final int totalDays = snapshot.data ?? 0;
                              return AppGridItem(
                                onPressed: () => InteractionBottomSheet.show(contact: contact),
                                avatarUrl: contact.avatar,
                                title: contact.name,
                                titleColor: Theme.of(context).colorScheme.onPrimary,
                                moonPercent: contact.getMoonPercent(totalDays),
                                expirationDay: contact.expirationDays,
                              );
                            },
                          ))
                      .toList(),
                )
              : ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: contacts.length,
                  itemBuilder: (context, index) {
                    final Contact contact = contacts.elementAt(index);
                    return FutureBuilder<int>(
                      future: bloc.getDaysOfFrequency(contact.groupId),
                      builder: (context, snapshot) {
                        final int totalDays = snapshot.data ?? 0;
                        return AppListItem(
                          onPressed: () => InteractionBottomSheet.show(contact: contact),
                          onKeepUpPressed: () => _onShowKeepUpContactConfirmDialog(bloc, contact),
                          avatarUrl: contact.avatar,
                          title: contact.name,
                          titleColor: Theme.of(context).colorScheme.onPrimary,
                          description: contact.groupName ?? '',
                          moonPercent: contact.getMoonPercent(totalDays),
                          expirationDays: contact.expirationDays,
                        );
                      },
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 4),
                );
        });
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
}
