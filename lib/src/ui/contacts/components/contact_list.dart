import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/design/components/keep_up/app_grid_item.dart';
import 'package:keepup/src/design/components/keep_up/app_list_item.dart';
import 'package:keepup/src/enums/layout_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interaction_bottom_sheet.dart';
import 'package:keepup/src/ui/contacts/interactor/contact_bloc.dart';
import 'package:keepup/src/utils/app_shared.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ContactBloc>();
    return BlocBuilder<ContactBloc, ContactState>(
      buildWhen: (previous, current) => previous.filterContacts != current.filterContacts,
      builder: (context, state) {
        final List<Contact> contacts = state.filterContacts;
        return StreamBuilder<LayoutType>(
          stream: Get.find<AppShared>().watchLayoutType,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            }
            final LayoutType layoutType = snapshot.data ?? LayoutType.list;
            return layoutType.isGridView
                ? SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 40),
                    child: Wrap(
                      children: contacts
                          .map((contact) => AppGridItem(
                                onPressed: () => InteractionBottomSheet.show(contact: contact),
                                avatarUrl: contact.avatar,
                                title: contact.name,
                                titleColor: Theme.of(context).colorScheme.onPrimary,
                                expiration: contact.expiration,
                              ))
                          .toList(),
                    ),
                  )
                : ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 40),
                    itemCount: contacts.length,
                    itemBuilder: (context, index) {
                      final Contact contact = contacts.elementAt(index);
                      return AppListItem(
                        onPressed: () => InteractionBottomSheet.show(contact: contact),
                        onKeepUpPressed: () => _onShowKeepUpContactConfirmDialog(bloc, contact),
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
        );
      },
    );
  }

  void _onShowKeepUpContactConfirmDialog(ContactBloc bloc, Contact contact) {
    AppDialogs(
      title: LocaleKey.keepUp.tr,
      message: LocaleKey.keepUpContactConfirm.tr,
      contentPadding: const EdgeInsets.all(34).copyWith(top: 34),
      cancelTitle: LocaleKey.cancel.tr,
      confirmTitle: LocaleKey.keepUp.tr,
      onConfirmed: () {
        bloc.add(ContactEvent.onKeepUpContact(contact));
        Get.back();
      },
    ).show();
  }
}
