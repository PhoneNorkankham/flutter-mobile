import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/dialogs/app_dialogs.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';

class GroupDetailDelete extends StatelessWidget {
  const GroupDetailDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showDeleteConfirmDialog(context),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.all(10).copyWith(left: 16, right: 12),
        constraints: const BoxConstraints(minHeight: 44),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          LocaleKey.deleteGroup.tr,
          style: context.appTextTheme.medium14.copyWith(
            color: Colors.red,
          ),
        ),
      ),
    );
  }

  _showDeleteConfirmDialog(BuildContext context) {
    showConfirmDialog(
      LocaleKey.deleteGroupDescription.tr,
      title: LocaleKey.deleteGroup.tr,
      cancelTitle: LocaleKey.cancel.tr,
      confirmTitle: LocaleKey.delete.tr,
      onConfirmed: () {
        Get.back();
        final GroupDetailBloc bloc = context.read();
        bloc.add(const GroupDetailEvent.onDeleteGroup());
      },
    );
  }
}
