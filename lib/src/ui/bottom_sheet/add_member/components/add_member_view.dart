import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/buttons/layout_button.dart';
import 'package:keepup/src/design/components/inputs/app_search_input.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/base_page.dart';
import 'package:keepup/src/ui/bottom_sheet/add_member/components/add_member_header.dart';
import 'package:keepup/src/ui/bottom_sheet/add_member/components/add_member_list.dart';
import 'package:keepup/src/ui/bottom_sheet/add_member/components/add_member_selected.dart';
import 'package:keepup/src/ui/bottom_sheet/add_member/interactor/add_member_bloc.dart';

class AddMemberView extends StatelessWidget {
  const AddMemberView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AddMemberBloc>();
    return SafeArea(
      child: BasePage(
        unFocusWhenTouchOutsideInput: true,
        child: Container(
          decoration: ShapeDecoration(
            color: Theme.of(context).colorScheme.primary,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            ),
          ),
          margin: const EdgeInsets.only(top: 15),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AddMemberHeader(),
              const SizedBox(height: 18),
              AppSearchInput(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                hintText: LocaleKey.searchContacts.tr,
                onChanged: (value) => bloc.add(AddMemberEvent.onChangedKeyword(value)),
              ),
              const AddMemberSelected(),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(width: 20),
                  Text(
                    LocaleKey.contacts.tr,
                    style: context.appTextTheme.bold16.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const Spacer(),
                  const LayoutButton(),
                  const SizedBox(width: 20),
                ],
              ),
              const SizedBox(height: 8),
              const Expanded(child: AddMemberList()),
            ],
          ),
        ),
      ),
    );
  }
}
