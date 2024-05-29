import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/new_chat_tab_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';

class AddMemberHeader extends StatelessWidget {
  const AddMemberHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewChatBloc>();
    return BlocBuilder<NewChatBloc, NewChatState>(
      buildWhen: (previous, current) =>
          previous.contacts != current.contacts ||
          previous.selectedGroup != current.selectedGroup ||
          previous.selectedContacts != current.selectedContacts,
      builder: (context, state) {
        final List<ContactRequest> contacts = [
          // Get all contacts that don't belong to any other group
          ...state.contacts.where((element) => element.groupId.isEmpty).toList()
        ];
        return Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 8),
                Text(
                  state.selectedGroup == null
                      ? LocaleKey.addContactsToGroup.tr
                      : LocaleKey.addContactsToGroup.tr.replaceFirst(
                          'Group',
                          state.selectedGroup?.name ?? '',
                        ),
                  style: context.appTextTheme.bold18.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '${state.selectedContacts.length}/${contacts.length}',
                  style: context.appTextTheme.medium12.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () => bloc.add(NewChatEvent.onChangedTabType(
                      state.selectedGroup == null
                          ? NewChatTabType.newGroup
                          : NewChatTabType.groups)),
                  child: Text(
                    LocaleKey.cancel.tr,
                    style: context.appTextTheme.bold14.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: state.selectedContacts.isEmpty
                      ? null
                      : () {
                          if (state.selectedGroup == null) {
                            bloc.add(const NewChatEvent.onChangedTabType(NewChatTabType.newGroup));
                          } else {
                            bloc.add(const NewChatEvent.onAddContactsToGroup());
                          }
                        },
                  child: Text(
                    LocaleKey.done.tr,
                    style: context.appTextTheme.bold14.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withOpacity(state.selectedContacts.isEmpty ? 0.5 : 1),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        );
      },
    );
  }
}
