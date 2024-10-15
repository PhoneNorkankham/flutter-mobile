import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/extensions/contact_extensions.dart';
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
            FutureBuilder<int>(
              future: bloc.getDaysOfFrequency(contact.groupId),
              builder: (context, snapshot) {
                final int totalDays = snapshot.data ?? 0;
                return AppCircleAvatar(
                  radius: 18,
                  url: contact.avatar,
                  text: contact.name,
                  moonPercent: contact.getMoonPercent(totalDays),
                  expirationDay: contact.expirationDays,
                );
              },
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                contact.name,
                style: context.appTextTheme.medium14,
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
