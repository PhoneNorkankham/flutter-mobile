import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/inputs/app_input_text_field.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';

class NewGroupHeader extends StatelessWidget {
  const NewGroupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewChatBloc>();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 28),
          const AppCircleAvatar(url: '', radius: 50),
          const SizedBox(height: 20),
          AppInputTextField(
            maxLines: 1,
            onChanged: (value) => bloc.add(NewChatEvent.onChangedGroupName(value)),
            textStyle: context.appTextTheme.medium20.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: 'Tab to Add Group Name',
              hintStyle: context.appTextTheme.medium20.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            cursorColor: Theme.of(context).colorScheme.onPrimary,
          ),
        ],
      ),
    );
  }
}
