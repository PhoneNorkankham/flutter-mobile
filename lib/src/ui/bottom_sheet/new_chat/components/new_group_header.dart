import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/design/components/dialogs/picker_photo_dialog.dart';
import 'package:keepup/src/design/components/inputs/app_input_text_field.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
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
          GestureDetector(
            onTap: () => AppDialogs(
              title: LocaleKey.uploadPhoto.tr,
              content: PickerPhotoDialog(
                onSelected: (file) => bloc.add(NewChatEvent.onChangedAvatar(file)),
              ),
              contentPadding: const EdgeInsets.all(34).copyWith(top: 34),
            ).show(),
            child: BlocBuilder<NewChatBloc, NewChatState>(
              buildWhen: (previous, current) =>
                  previous.avatar != current.avatar ||
                  previous.contactRequest.avatar != current.contactRequest.avatar,
              builder: (context, state) => AppCircleAvatar(
                file: state.avatar,
                url: state.contactRequest.avatar,
                radius: 50,
              ),
            ),
          ),
          const SizedBox(height: 20),
          AppInputTextField(
            maxLines: 1,
            controller: bloc.nameController,
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
              hintText: LocaleKey.tabToAddGroupName.tr,
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
