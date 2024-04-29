import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_item.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';
import 'package:keepup/src/ui/contacts/components/contact_item.dart';

class AddMemberContacts extends StatelessWidget {
  const AddMemberContacts({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewChatBloc>();
    return BlocBuilder<NewChatBloc, NewChatState>(
      buildWhen: (previous, current) =>
          previous.selectedContacts != current.selectedContacts ||
          previous.filterContacts != current.filterContacts,
      builder: (context, state) {
        final List<Contact> selectedContacts = state.selectedContacts;
        final List<Contact> filterContacts = state.filterContacts;
        final List<Contact> contacts = [...filterContacts]
          ..removeWhere((element) => selectedContacts.contains(element));
        return ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            final Contact contact = contacts.elementAt(index);
            return KeepUpItem(
              onPressed: () => bloc.add(NewChatEvent.onSelectedContact(contact)),
              name: contact.name,
              action: Container(
                width: 21,
                height: 21,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(color: AppColors.grey50),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 4),
        );
      },
    );
  }
}
