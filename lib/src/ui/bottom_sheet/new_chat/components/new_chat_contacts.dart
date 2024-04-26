import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';
import 'package:keepup/src/ui/contacts/components/contact_item.dart';

class NewChatContacts extends StatelessWidget {
  const NewChatContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewChatBloc, NewChatState>(
      buildWhen: (previous, current) => previous.contacts != current.contacts,
      builder: (context, state) {
        final List<Contact> contacts = state.contacts;
        return ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: contacts.length,
          itemBuilder: (context, index) => ContactItem(
            contact: contacts.elementAt(index),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 4),
        );
      },
    );
  }
}
