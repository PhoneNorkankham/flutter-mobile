import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/inputs/app_input_text_field.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/group_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';

class GroupDetailHeader extends StatelessWidget {
  const GroupDetailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupDetailBloc, GroupDetailState>(
      buildWhen: (previous, current) => previous.groupType != current.groupType,
      builder: (context, state) {
        return Container(
          constraints: const BoxConstraints(minHeight: 216),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 28),
              if (state.groupType == GroupType.groupDetail)
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.av_timer,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        '0 Days left',
                        style: context.appTextTheme.medium14.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                    Text(
                      LocaleKey.delete.tr,
                      style: context.appTextTheme.medium14.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ],
                ),
              const AppCircleAvatar(url: '', radius: 50),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.group,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      '28 ${LocaleKey.members.tr}',
                      style: context.appTextTheme.medium14.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  if (state.groupType == GroupType.newGroup) ...[
                    Icon(
                      Icons.av_timer,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '0 Days left',
                      style: context.appTextTheme.medium14.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ],
                ],
              ),
              const SizedBox(height: 20),
              AppInputTextField(
                maxLines: 1,
                textStyle: context.appTextTheme.medium20.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                enabled: state.groupType == GroupType.newGroup,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText:
                      state.groupType == GroupType.groupDetail ? 'Family' : 'Tab to Add Group Name',
                  hintStyle: context.appTextTheme.medium20.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                cursorColor: Theme.of(context).colorScheme.onPrimary,
              ),
            ],
          ),
        );
      },
    );
  }
}
