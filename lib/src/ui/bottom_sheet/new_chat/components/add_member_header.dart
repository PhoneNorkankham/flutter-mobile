import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
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
          previous.selectedContacts != current.selectedContacts,
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 8),
                Text(
                  LocaleKey.addMember.tr,
                  style: context.appTextTheme.bold16.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '${state.selectedContacts.length}/${state.contacts.length}',
                  style: context.appTextTheme.medium10.copyWith(
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
                  onPressed: () =>
                      bloc.add(const NewChatEvent.onChangedTabType(NewChatTabType.newChat)),
                  child: Text(
                    LocaleKey.cancel.tr,
                    style: context.appTextTheme.bold16.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: state.selectedContacts.isNotEmpty
                      ? () => bloc.add(const NewChatEvent.onChangedTabType(NewChatTabType.newGroup))
                      : null,
                  child: Text(
                    LocaleKey.next.tr,
                    style: context.appTextTheme.bold16.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withOpacity(state.selectedContacts.isNotEmpty ? 1 : 0.5),
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
