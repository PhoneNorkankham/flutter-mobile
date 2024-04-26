import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/groups/interactor/group_bloc.dart';

class AddGroupButton extends StatelessWidget {
  const AddGroupButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<GroupBloc>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppButton(
          onPressed: () => bloc.add(const GroupEvent.onGotoNewGroup()),
          buttonType: AppButtonType.whiteCircle,
          child: const Icon(Icons.add, size: 34),
        ),
        const SizedBox(height: 4),
        Text(
          LocaleKey.addGroup.tr,
          style: context.appTextTheme.bold14.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ],
    );
  }
}
