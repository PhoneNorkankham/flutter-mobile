import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/ui/bottom_sheet/add_text/add_text_bottom_sheet.dart';
import 'package:keepup/src/ui/bottom_sheet/add_text/interactor/add_text_type.dart';
import 'package:keepup/src/ui/profile/interactor/profile_bloc.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileBloc bloc = context.read();
    return BlocBuilder<ProfileBloc, ProfileState>(
      buildWhen: (previous, current) => previous.userData.name != current.userData.name,
      builder: (context, state) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              state.userData.name,
              style: context.appTextTheme.bold30.copyWith(fontSize: 24),
              textAlign: TextAlign.center,
              maxLines: 1,
            ),
          ),
          const SizedBox(width: 2),
          GestureDetector(
            child: const Icon(Icons.edit),
            onTap: () => AddTextBottomSheet.show(
              type: AddTextType.name,
              value: state.userData.name,
            ).then((value) {
              if (value.isNotEmpty) {
                bloc.add(ProfileEvent.onChangedName(value));
              }
            }),
          )
        ],
      ),
    );
  }
}
