import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/model/group.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_item.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/onboarding/interactor/onboarding_bloc.dart';

class OnboardingGroups extends StatelessWidget {
  const OnboardingGroups({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      buildWhen: (previous, current) => previous.groups != current.groups,
      builder: (BuildContext context, OnboardingState state) {
        final bloc = context.read<OnboardingBloc>();
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
            for (GroupData group in state.groups) ...[
              KeepUpItem(
                onPressed: () => bloc.add(OnboardingEvent.onJoinGroup(group)),
                name: group.name,
                action: Icon(
                  Icons.add_circle,
                  size: 24,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              if (group != state.groups.last) const SizedBox(height: 18),
            ],
          ],
        );
      },
    );
  }
}
