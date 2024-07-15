import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/keep_up/contact_grid_item.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interaction_bottom_sheet.dart';
import 'package:keepup/src/ui/contacts/interactor/contact_bloc.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactBloc, ContactState>(
      buildWhen: (previous, current) => previous.filterContacts != current.filterContacts,
      builder: (context, state) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Wrap(
          children: state.filterContacts
              .map((contact) => AppGridItem(
                    onPressed: () => InteractionBottomSheet.show(contact: contact),
                    avatarUrl: contact.avatar,
                    title: contact.name,
                    titleColor: Theme.of(context).colorScheme.onPrimary,
                    expiration: contact.expiration,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
