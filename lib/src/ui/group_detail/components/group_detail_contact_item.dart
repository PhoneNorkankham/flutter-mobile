import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interaction_bottom_sheet.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';
import 'package:keepup/src/utils/app_assets.dart';

class GroupDetailContactItem extends StatelessWidget {
  final Contact contact;

  const GroupDetailContactItem({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    final GroupDetailBloc bloc = context.read();
    return InkWell(
      onTap: () => InteractionBottomSheet.show(contact: contact).then((value) {
        if (value) {
          bloc.add(const GroupDetailEvent.onChangedContacts());
        }
      }),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(6).copyWith(left: 14, right: 12),
        constraints: const BoxConstraints(minHeight: 56),
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: contact.expiration?.urgentColor ?? AppColors.grey350,
                borderRadius: BorderRadius.circular(90),
                border: Border.all(
                  color: AppColors.grey350,
                  width: 2,
                ),
              ),
              padding: const EdgeInsets.all(2),
              child: AppCircleAvatar(
                radius: 18,
                url: contact.avatar,
                text: contact.name,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                contact.name,
                style: context.appTextTheme.medium16,
              ),
            ),
            const SizedBox(width: 2),
            SvgPicture.asset(AppAssets.ic_next_svg),
          ],
        ),
      ),
    );
  }
}
