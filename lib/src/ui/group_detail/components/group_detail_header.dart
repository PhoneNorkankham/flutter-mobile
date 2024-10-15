import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/model/bing_search_image_data.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/popup_menu/edit_photo_popup.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/add_text/add_text_bottom_sheet.dart';
import 'package:keepup/src/ui/bottom_sheet/add_text/interactor/add_text_type.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';

class GroupDetailHeader extends StatelessWidget {
  const GroupDetailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final GroupDetailBloc bloc = context.read();
    return Container(
      constraints: const BoxConstraints(minHeight: 216),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 32),
          BlocBuilder<GroupDetailBloc, GroupDetailState>(
            buildWhen: (previous, current) => previous.request.avatar != current.request.avatar,
            builder: (context, state) => AppCircleAvatar(
              file: state.avatarFile,
              url: state.request.avatar,
              text: state.request.name,
              radius: 60,
              onPressed: () => EditPhotoPopup.show(
                imageUrl: state.request.avatar,
                query: state.request.name,
              ).then((value) {
                if (value is File) {
                  bloc.add(GroupDetailEvent.onChangedAvatar(value));
                } else if (value is BingSearchImageData) {
                  bloc.add(GroupDetailEvent.onChangedAvatarFromUrl(value));
                }
              }),
            ),
          ),
          const SizedBox(height: 10),
          BlocBuilder<GroupDetailBloc, GroupDetailState>(
            buildWhen: (previous, current) => previous.request.name != current.request.name,
            builder: (context, state) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    state.request.name,
                    style: context.appTextTheme.bold30.copyWith(fontSize: 24),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ),
                const SizedBox(width: 2),
                GestureDetector(
                  child: const Icon(Icons.edit),
                  onTap: () {
                    final GroupDetailBloc bloc = context.read();
                    AddTextBottomSheet.show(
                      type: AddTextType.groupName,
                      value: bloc.state.request.name,
                    ).then((value) {
                      if (value.isNotEmpty) {
                        bloc.add(GroupDetailEvent.onNameChanged(value));
                      }
                    });
                  },
                )
              ],
            ),
          ),
          const SizedBox(height: 2),
          BlocBuilder<GroupDetailBloc, GroupDetailState>(
            buildWhen: (previous, current) =>
                previous.request.contacts.length != current.request.contacts.length,
            builder: (context, state) => Text(
              '${LocaleKey.group.tr} • ${state.request.contacts.length} ${LocaleKey.contacts.tr}',
              style: context.appTextTheme.medium16,
            ),
          ),
        ],
      ),
    );
  }
}
