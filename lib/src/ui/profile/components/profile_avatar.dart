import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/core/model/bing_search_image_data.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/popup_menu/edit_photo_popup.dart';
import 'package:keepup/src/ui/profile/interactor/profile_bloc.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileBloc bloc = context.read();
    return BlocBuilder<ProfileBloc, ProfileState>(
      buildWhen: (previous, current) => previous.userData.avatar != current.userData.avatar,
      builder: (context, state) => AppCircleAvatar(
        file: state.avatarFile,
        url: state.userData.avatar,
        text: state.userData.name,
        radius: 60,
        onPressed: () => EditPhotoPopup.show(
          imageUrl: state.userData.avatar,
          query: state.userData.name,
        ).then((value) {
          if (value is File) {
            bloc.add(ProfileEvent.onChangedAvatar(value));
          } else if (value is BingSearchImageData) {
            bloc.add(ProfileEvent.onChangedAvatarFromUrl(value));
          }
        }),
      ),
    );
  }
}
