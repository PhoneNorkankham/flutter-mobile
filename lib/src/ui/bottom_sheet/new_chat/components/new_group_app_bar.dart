import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/new_chat_tab_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';

class NewGroupAppBar extends StatelessWidget {
  const NewGroupAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewChatBloc>();
    return BlocBuilder<NewChatBloc, NewChatState>(
      buildWhen: (previous, current) =>
          previous.enabledCreateNewGroupButton != current.enabledCreateNewGroupButton,
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                LocaleKey.newGroup.tr,
                style: context.appTextTheme.bold16.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () =>
                      bloc.add(const NewChatEvent.onChangedTabType(NewChatTabType.addMembers)),
                  child: Text(
                    LocaleKey.back.tr,
                    style: context.appTextTheme.bold16.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: state.enabledCreateNewGroupButton
                      ? () => bloc.add(const NewChatEvent.onCreateNewGroup())
                      : null,
                  child: Text(
                    LocaleKey.create.tr,
                    style: context.appTextTheme.bold16.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withOpacity(state.enabledCreateNewGroupButton ? 1 : 0.5),
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