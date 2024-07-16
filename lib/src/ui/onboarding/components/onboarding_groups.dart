import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_item.dart';
import 'package:keepup/src/design/components/toasts/app_toasts.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/add_contacts_to_group/add_contacts_to_group_bottom_sheet.dart';
import 'package:keepup/src/ui/onboarding/interactor/onboarding_bloc.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';

class OnboardingGroups extends StatelessWidget {
  const OnboardingGroups({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      buildWhen: (previous, current) => previous.groups != current.groups,
      builder: (BuildContext context, OnboardingState state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              LocaleKey.groups.tr,
              style: context.appTextTheme.bold16.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            const SizedBox(height: 12),
            for (Group group in state.groups) ...[
              KeepUpItem(
                onPressed: () => AddContactsToGroupBottomSheet.show(group).then((value) {
                  if (value is PopResult && value.status) {
                    showSuccessToast(LocaleKey.addContactsToGroupSuccessfully.tr);
                  }
                }),
                name: group.name,
                avatar: group.avatar,
                action: Icon(
                  Icons.add_circle,
                  size: 24,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              if (group != state.groups.last) const SizedBox(height: 10),
            ],
          ],
        );
      },
    );
  }
}
