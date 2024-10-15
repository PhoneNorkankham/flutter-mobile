import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/popup_menu/category_popup.dart';
import 'package:keepup/src/design/components/popup_menu/frequency_interval_popup.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';
import 'package:keepup/src/utils/app_assets.dart';

class GroupDetailSettings extends StatelessWidget {
  const GroupDetailSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(10).copyWith(left: 16, right: 12),
            constraints: const BoxConstraints(minHeight: 44),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                const Icon(Icons.category),
                const SizedBox(width: 14),
                Expanded(
                  child: Text(
                    LocaleKey.category.tr,
                    style: context.appTextTheme.medium14,
                  ),
                ),
                const SizedBox(width: 8),
                BlocBuilder<GroupDetailBloc, GroupDetailState>(
                  buildWhen: (previous, current) =>
                      previous.categories != current.categories ||
                      previous.selectedCategory != current.selectedCategory,
                  builder: (context, state) => CategoryPopup(
                    selectedCategory: state.selectedCategory,
                    categories: state.categories,
                    textStyle: context.appTextTheme.medium14.copyWith(
                      color: const Color(0xFF8E8E8F),
                    ),
                    onChanged: (value) {
                      final GroupDetailBloc bloc = context.read();
                      bloc.add(GroupDetailEvent.onCategoryChanged(value));
                    },
                  ),
                ),
                const SizedBox(width: 2),
                SvgPicture.asset(AppAssets.ic_next_svg),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10).copyWith(left: 16, right: 12),
            constraints: const BoxConstraints(minHeight: 44),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                const Icon(Icons.repeat),
                const SizedBox(width: 14),
                Expanded(
                  child: Text(
                    LocaleKey.remind.tr,
                    style: context.appTextTheme.medium14,
                  ),
                ),
                const SizedBox(width: 8),
                BlocBuilder<GroupDetailBloc, GroupDetailState>(
                  buildWhen: (previous, current) =>
                      previous.request.frequencyInterval != current.request.frequencyInterval,
                  builder: (context, state) => FrequencyIntervalPopup(
                    type: state.request.frequencyInterval,
                    textStyle: context.appTextTheme.medium14.copyWith(
                      color: const Color(0xFF8E8E8F),
                    ),
                    onChanged: (value) {
                      final GroupDetailBloc bloc = context.read();
                      bloc.add(GroupDetailEvent.onFrequencyIntervalChanged(value));
                    },
                  ),
                ),
                const SizedBox(width: 2),
                SvgPicture.asset(AppAssets.ic_next_svg),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(10).copyWith(left: 16, right: 12),
              constraints: const BoxConstraints(minHeight: 44),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const Icon(Icons.notifications_none),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(
                      LocaleKey.notifications.tr,
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
      ),
    );
  }
}
