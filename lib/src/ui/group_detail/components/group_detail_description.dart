import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/add_text/add_text_bottom_sheet.dart';
import 'package:keepup/src/ui/bottom_sheet/add_text/interactor/add_text_type.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';
import 'package:keepup/src/utils/app_assets.dart';

class GroupDetailDescription extends StatelessWidget {
  const GroupDetailDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final GroupDetailBloc bloc = context.read();
        AddTextBottomSheet.show(
          type: AddTextType.groupDescription,
          value: bloc.state.request.description,
        ).then((value) {
          if (value.isNotEmpty) {
            bloc.add(GroupDetailEvent.onDescriptionChanged(value));
          }
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.all(10).copyWith(left: 16, right: 12),
        constraints: const BoxConstraints(minHeight: 44),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: BlocBuilder<GroupDetailBloc, GroupDetailState>(
          buildWhen: (previous, current) =>
              previous.request.description != current.request.description,
          builder: (context, state) {
            final String description = state.request.description;
            if (description.isEmpty) {
              return Text(
                LocaleKey.addGroupDescription.tr,
                style: context.appTextTheme.medium16.copyWith(
                  color: const Color(0xFF1BA05C),
                ),
              );
            } else {
              return Row(
                children: [
                  Expanded(
                    child: Text(
                      description,
                      style: context.appTextTheme.medium16,
                    ),
                  ),
                  SvgPicture.asset(AppAssets.ic_next_svg),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
