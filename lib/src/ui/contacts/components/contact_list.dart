import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          itemCount: state.filterContacts.length,
          itemBuilder: (context, index) => ContactItem(
            onPressed: (contact) => bloc.add(ContactEvent.onGotoContactDetails(contact)),
            contact: state.filterContacts.elementAt(index),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 4),
        );
      },
    );
  }
}
