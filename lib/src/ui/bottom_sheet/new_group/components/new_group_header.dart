import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/model/bing_search_image_data.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/inputs/app_input_text_field.dart';
import 'package:keepup/src/design/components/popup_menu/edit_photo_popup.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/new_group/interactor/new_group_bloc.dart';

class NewGroupHeader extends StatelessWidget {
  const NewGroupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewGroupBloc>();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 28),
          BlocBuilder<NewGroupBloc, NewGroupState>(
            buildWhen: (previous, current) =>
                previous.avatar != current.avatar ||
                previous.groupRequest.name != current.groupRequest.name ||
                previous.groupRequest.avatar != current.groupRequest.avatar,
            builder: (context, state) => AppCircleAvatar(
              file: state.avatar,
              url: state.groupRequest.avatar,
              radius: 50,
              onPressed: () => EditPhotoPopup.show(
                imageUrl: state.groupRequest.avatar,
                query: state.groupRequest.name,
              ).then((value) {
                if (value is File) {
                  bloc.add(NewGroupEvent.onChangedAvatar(value));
                } else if (value is BingSearchImageData) {
                  bloc.add(NewGroupEvent.onChangedAvatarFromUrl(value));
                }
              }),
            ),
          ),
          const SizedBox(height: 20),
          AppInputTextField(
            maxLines: 1,
            controller: bloc.nameController,
            onChanged: (value) => bloc.add(NewGroupEvent.onChangedGroupName(value)),
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
