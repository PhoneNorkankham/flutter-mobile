import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/design/components/keep_up/app_grid_item.dart';
import 'package:keepup/src/ui//bottom_sheet/add_contacts_to_group/interactor/add_contacts_to_group_bloc.dart';

class AddContactsToGroupSelected extends StatelessWidget {
  const AddContactsToGroupSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddContactsToGroupBloc, AddContactsToGroupState>(
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
            children: contacts
                .map((contact) => AppGridItem(
                      avatarUrl: contact.avatar,
                      avatarFile: contact.file,
                      title: contact.name,
                      onRemovedPressed: () {
                        final bloc = context.read<AddContactsToGroupBloc>();
                        bloc.add(AddContactsToGroupEvent.onRemovedContact(contact));
                      },
                    ))
                .toList(),
          ),
        );
      },
    );
  }
}
