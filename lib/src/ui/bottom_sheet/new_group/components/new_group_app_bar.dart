import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/new_group/interactor/new_group_bloc.dart';

class NewGroupAppBar extends StatelessWidget {
  const NewGroupAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewGroupBloc>();
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            LocaleKey.newGroup.tr,
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
              onPressed: () => Get.back(),
              child: Text(
                LocaleKey.back.tr,
                style: context.appTextTheme.bold14.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            const Spacer(),
            BlocBuilder<NewGroupBloc, NewGroupState>(
              buildWhen: (previous, current) =>
                  previous.enabledCreateNewGroupButton != current.enabledCreateNewGroupButton,
              builder: (context, state) {
                return TextButton(
                  onPressed: state.enabledCreateNewGroupButton
                      ? () {
                          FocusScope.of(context).unfocus();
                          bloc.add(const NewGroupEvent.onCreateNewGroup());
                        }
                      : null,
                  child: Text(
                    LocaleKey.create.tr,
                    style: context.appTextTheme.bold14.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withOpacity(state.enabledCreateNewGroupButton ? 1 : 0.5),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(width: 8),
          ],
        ),
      ],
    );
  }
}
