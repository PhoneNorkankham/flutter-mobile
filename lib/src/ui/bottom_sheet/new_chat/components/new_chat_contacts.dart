import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_item.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';

class NewChatContacts extends StatelessWidget {
  const NewChatContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewChatBloc, NewChatState>(
      buildWhen: (previous, current) => previous.filterContacts != current.filterContacts,
      builder: (context, state) {
        final List<Contact> filterContacts = state.filterContacts;
        return ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: filterContacts.length,
          itemBuilder: (context, index) {
            final Contact contact = filterContacts.elementAt(index);
            return KeepUpItem(name: contact.name);
          },
          separatorBuilder: (context, index) => const SizedBox(height: 4),
        );
      },
    );
  }
}
