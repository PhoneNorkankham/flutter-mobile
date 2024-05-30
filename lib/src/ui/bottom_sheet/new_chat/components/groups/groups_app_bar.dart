import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/new_chat_tab_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';

class GroupsAppBar extends StatelessWidget {
  const GroupsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewChatBloc>();
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            LocaleKey.groups.tr,
            style: context.appTextTheme.bold18.copyWith(
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
                  bloc.add(const NewChatEvent.onChangedTabType(NewChatTabType.newChat)),
              child: Text(
                LocaleKey.cancel.tr,
                style: context.appTextTheme.bold14.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}
