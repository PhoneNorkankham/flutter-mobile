import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';
import 'package:keepup/src/utils/app_assets.dart';

class GroupDetailSeeAllContacts extends StatelessWidget {
  const GroupDetailSeeAllContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupDetailBloc, GroupDetailState>(
      buildWhen: (previous, current) => previous.hiddenSeeAllButton != current.hiddenSeeAllButton,
      builder: (context, state) {
        if (state.hiddenSeeAllButton) return const SizedBox(height: 8);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Divider(
              height: 1,
              thickness: 1,
              indent: 60,
              color: Theme.of(context).dividerColor,
            ),
            InkWell(
              onTap: () {
                final GroupDetailBloc bloc = context.read();
                bloc.add(const GroupDetailEvent.onOpenedSeeAll());
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.all(20).copyWith(left: 14, right: 12),
                constraints: const BoxConstraints(minHeight: 56),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        LocaleKey.seeAll.tr,
                        style: context.appTextTheme.medium14,
                      ),
                    ),
                    const SizedBox(width: 2),
                    SvgPicture.asset(AppAssets.ic_next_svg),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
