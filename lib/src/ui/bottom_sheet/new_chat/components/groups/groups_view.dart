import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/inputs/app_search_input.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/base_page.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/groups/groups_app_bar.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/groups/groups_list.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';

class GroupsView extends StatelessWidget {
  const GroupsView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewChatBloc>();
    return SafeArea(
      child: BasePage(
        unFocusWhenTouchOutsideInput: true,
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: ShapeDecoration(
            color: Theme.of(context).colorScheme.primary,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            ),
          ),
          margin: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              const GroupsAppBar(),
              const SizedBox(height: 18),
              AppSearchInput(
                controller: bloc.keywordController,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                hintText: LocaleKey.searchNameOrNumber.tr,
                onChanged: (value) => bloc.add(NewChatEvent.onChangedKeyword(value)),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: GroupsList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
