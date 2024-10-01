import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/design/components/dialogs/picker_photo_dialog.dart';
import 'package:keepup/src/locale/locale_key.dart';
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
            onPressed: () => AppDialogs(
              title: LocaleKey.uploadAvatar.tr,
              content: PickerPhotoDialog(
                onSelected: (file) => bloc.add(NewContactEvent.onChangedAvatar(file)),
              ),
              contentPadding: const EdgeInsets.all(34).copyWith(top: 34),
            ).show(),
          ),
        ),
      ),
    );
  }
}
