import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/ui/add_contacts/components/add_contacts_item.dart';
import 'package:keepup/src/ui/add_contacts/interactor/add_contacts_bloc.dart';

class AddContactsList extends StatelessWidget {
  const AddContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AddContactsBloc>();
    return BlocBuilder<AddContactsBloc, AddContactsState>(
      buildWhen: (previous, current) => previous.getFilterContacts() != current.getFilterContacts(),
      builder: (context, state) {
        final List<ContactRequest> contacts = state.getFilterContacts();
        return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          itemCount: contacts.length,
          itemBuilder: (context, index) => AddContactsItem(
            onChanged: (contact) => bloc.add(AddContactsEvent.onChangedContact(contact)),
            contact: contacts.elementAt(index),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 4),
        );
      },
    );
  }
}
