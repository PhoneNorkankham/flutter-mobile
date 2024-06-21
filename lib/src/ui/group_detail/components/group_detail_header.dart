import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/dialogs/app_dialogs.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/design/components/dialogs/picker_photo_dialog.dart';
import 'package:keepup/src/design/components/inputs/app_input_text_field.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
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
          const SizedBox(height: 28),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                Icons.av_timer,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              const SizedBox(width: 4),
              Expanded(
                child: BlocBuilder<GroupDetailBloc, GroupDetailState>(
                  buildWhen: (previous, current) =>
                      previous.request.daysLeft != current.request.daysLeft,
                  builder: (context, state) {
                    return Text(
                      '${state.request.daysLeft} ${LocaleKey.daysLeft.tr}',
                      style: context.appTextTheme.medium14.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: () => _showDeleteConfirmDialog(context, bloc),
                child: Text(
                  LocaleKey.delete.tr,
                  style: context.appTextTheme.medium14.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () => AppDialogs(
              title: LocaleKey.uploadAvatar.tr,
              content: PickerPhotoDialog(
                onSelected: (file) => bloc.add(GroupDetailEvent.onChangedAvatar(file)),
              ),
              contentPadding: const EdgeInsets.all(34).copyWith(top: 34),
            ).show(),
            child: BlocBuilder<GroupDetailBloc, GroupDetailState>(
              buildWhen: (previous, current) =>
                  previous.avatar != current.avatar ||
                  previous.request.avatar != current.request.avatar,
              builder: (context, state) => AppCircleAvatar(
                file: state.avatar,
                url: state.request.avatar,
                radius: 50,
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                Icons.group,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: BlocBuilder<GroupDetailBloc, GroupDetailState>(
                  buildWhen: (previous, current) =>
                      previous.request.contacts.length != current.request.contacts.length,
                  builder: (context, state) {
                    return Text(
                      '${state.request.contacts.length} ${LocaleKey.members.tr}',
                      style: context.appTextTheme.medium14.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          AppInputTextField(
            maxLines: 1,
            textStyle: context.appTextTheme.medium20.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            controller: bloc.nameController,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: LocaleKey.tabToAddGroupName.tr,
              hintStyle: context.appTextTheme.medium20.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            cursorColor: Theme.of(context).colorScheme.onPrimary,
            onChanged: (value) => bloc.add(GroupDetailEvent.onNameChanged(value)),
          ),
        ],
      ),
    );
  }

  _showDeleteConfirmDialog(BuildContext context, GroupDetailBloc bloc) {
    showConfirmDialog(
      LocaleKey.deleteGroupDescription.tr,
      title: LocaleKey.deleteGroup.tr,
      cancelTitle: LocaleKey.cancel.tr,
      confirmTitle: LocaleKey.delete.tr,
      onConfirmed: () {
        Get.back();
        bloc.add(const GroupDetailEvent.onDeleteGroup());
      },
    );
  }
}
