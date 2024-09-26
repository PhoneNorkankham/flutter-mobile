import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/design/components/keep_up/app_grid_item.dart';
import 'package:keepup/src/ui/bottom_sheet/add_member/interactor/add_member_bloc.dart';

class AddMemberSelected extends StatelessWidget {
  const AddMemberSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddMemberBloc, AddMemberState>(
      buildWhen: (previous, current) => previous.selectedContacts != current.selectedContacts,
      builder: (context, state) {
        final List<ContactRequest> contacts = state.selectedContacts;
        if (contacts.isEmpty) return const SizedBox();
        return SizedBox(
          height: 110,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: contacts
                    .map((contact) => AppGridItem(
                          avatarUrl: contact.avatar,
                          avatarFile: contact.file,
                          title: contact.name,
                          onRemovedPressed: () {
                            final bloc = context.read<AddMemberBloc>();
                            bloc.add(AddMemberEvent.onRemovedContact(contact));
                          },
                        ))
                    .toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}
