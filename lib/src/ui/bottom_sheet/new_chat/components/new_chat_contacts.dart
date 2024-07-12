import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/ui/bottom_sheet/add_contacts_to_group/components/add_contacts_to_group_contacts.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';

class NewChatContacts extends StatelessWidget {
  const NewChatContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewChatBloc, NewChatState>(
      buildWhen: (previous, current) => previous.filterContacts != current.filterContacts,
      builder: (context, state) {
        final List<Contact> contacts = state.filterContacts;

        // Create sub tag
        final List<ContactSubTag> contactSubTags =
            contacts.map((e) => ContactSubTag(e.name[0])).toList();

        // Show sub tag
        SuspensionUtil.setShowSuspensionStatus(contactSubTags);

        return AzListView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          data: contactSubTags,
          indexBarData: const [],
          itemCount: contactSubTags.length,
          itemBuilder: (context, index) {
            final ContactSubTag contactSubTag = contactSubTags.elementAt(index);
            final Contact contact = contacts.elementAt(index);
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Offstage(
                  offstage: contactSubTag.isShowSuspension != true,
                  child: Container(
                    color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.only(left: 20.0, right: 40, top: 10, bottom: 10),
                    child: Text(contactSubTag.getSuspensionTag()),
                  ),
                ),
                Container(
                  constraints: const BoxConstraints(minHeight: 60),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      AppCircleAvatar(
                        radius: 20,
                        url: contact.avatar,
                        text: contact.name,
                      ),
                      const SizedBox(width: 16),
                      Flexible(
                        child: Text(
                          contact.name,
                          style: context.appTextTheme.bold16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
