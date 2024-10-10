import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/core/model/bing_search_image_data.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/popup_menu/edit_photo_popup.dart';
import 'package:keepup/src/ui//bottom_sheet/new_contact/interactor/new_contact_bloc.dart';

class NewContactHeader extends StatelessWidget {
  const NewContactHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final NewContactBloc bloc = context.read();
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: Center(
        child: BlocBuilder<NewContactBloc, NewContactState>(
          buildWhen: (previous, current) =>
              previous.avatar != current.avatar ||
              previous.contactRequest.avatar != current.contactRequest.avatar,
          builder: (context, state) => AppCircleAvatar(
            file: state.avatar,
            url: state.contactRequest.avatar,
            radius: 50,
            onPressed: () => EditPhotoPopup.show(
              query: bloc.nameController.text.trim(),
            ).then((value) {
              if (value is File) {
                bloc.add(NewContactEvent.onChangedAvatar(value));
              } else if (value is BingSearchImageData) {
                bloc.add(NewContactEvent.onChangedAvatarFromUrl(value));
              }
            }),
          ),
        ),
      ),
    );
  }
}
