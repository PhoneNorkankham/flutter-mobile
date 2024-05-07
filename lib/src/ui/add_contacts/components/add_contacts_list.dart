import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/ui/add_contacts/components/add_contacts_item.dart';
import 'package:keepup/src/ui/add_contacts/interactor/add_contacts_bloc.dart';

class AddContactsList extends StatelessWidget {
  const AddContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AddContactsBloc>();
    return BlocBuilder<AddContactsBloc, AddContactsState>(
      buildWhen: (previous, current) => previous.filterContacts != current.filterContacts,
      builder: (context, state) {
        return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          itemCount: state.filterContacts.length,
          itemBuilder: (context, index) => AddContactsItem(
            onChanged: (contact) => bloc.add(AddContactsEvent.onChangedContact(contact)),
            contact: state.filterContacts.elementAt(index),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 4),
        );
      },
    );
  }
}
