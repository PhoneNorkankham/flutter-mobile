import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/add_member_selected_item.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';

class AddMemberSelected extends StatelessWidget {
  const AddMemberSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewChatBloc, NewChatState>(
      buildWhen: (previous, current) => previous.selectedContacts != current.selectedContacts,
      builder: (context, state) {
        final List<ContactRequest> contacts = state.selectedContacts;
        if (contacts.isEmpty) return const SizedBox();
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 16),
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            children: contacts.map((e) => AddMemberSelectedItem(contact: e)).toList(),
          ),
        );
      },
    );
  }
}
