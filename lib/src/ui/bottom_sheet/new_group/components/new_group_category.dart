import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/popup_menu/category_popup.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/new_group/interactor/new_group_bloc.dart';

class NewGroupCategory extends StatelessWidget {
  const NewGroupCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: 20),
        Expanded(
          child: Text(
            LocaleKey.category.tr,
            style: context.appTextTheme.bold18,
          ),
        ),
        const SizedBox(width: 20),
        BlocBuilder<NewGroupBloc, NewGroupState>(
          buildWhen: (previous, current) =>
              previous.categories != current.categories ||
              previous.selectedCategory != current.selectedCategory,
          builder: (context, state) {
            final NewGroupBloc bloc = context.read();
            return CategoryPopup(
              categories: state.categories,
              selectedCategory: state.selectedCategory,
              onChanged: (value) => bloc.add(NewGroupEvent.onCategoryChanged(value)),
            );
          },
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
