import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_group_selected_item.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';

class NewGroupSelected extends StatelessWidget {
  const NewGroupSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewChatBloc, NewChatState>(
      buildWhen: (previous, current) => previous.selectedContacts != current.selectedContacts,
      builder: (context, state) {
        final List<Contact> contacts = state.selectedContacts;
        if (contacts.isEmpty) return const SizedBox();
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  '${LocaleKey.members.tr}: ${state.selectedContacts.length} of ${state.contacts.length}'
                      .toUpperCase(),
                  style: context.appTextTheme.medium12.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: contacts.map((e) => NewGroupSelectedItem(contact: e)).toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
