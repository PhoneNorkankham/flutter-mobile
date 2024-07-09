import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interaction_bottom_sheet.dart';
import 'package:keepup/src/ui/contacts/components/contact_item.dart';
import 'package:keepup/src/ui/contacts/interactor/contact_bloc.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ContactBloc>();

    return BlocBuilder<ContactBloc, ContactState>(
      buildWhen: (previous, current) => previous.filterContacts != current.filterContacts,
      builder: (context, state) {
        return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          itemCount: state.filterContacts.length,
          itemBuilder: (context, index) {
            final Contact contact = state.filterContacts.elementAt(index);
            return ContactItem(
              contact: contact,
              onPressed: () => InteractionBottomSheet.show(contact: contact),
              onKeepUpPressed: () => _onShowKeepUpContactConfirmDialog(bloc, contact),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 4),
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
