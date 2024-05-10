import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/inputs/app_search_input.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/base_page.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_chat_category.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_chat_contacts.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_chat_header.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';

class NewChatView extends StatelessWidget {
  const NewChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewChatBloc>();
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 16),
              const NewChatHeader(),
              const SizedBox(height: 18),
              AppSearchInput(
                controller: bloc.keywordController,
                margin: EdgeInsets.zero,
                hintText: LocaleKey.searchNameOrNumber.tr,
                onChanged: (value) => bloc.add(NewChatEvent.onChangedKeyword(value)),
              ),
              const SizedBox(height: 16),
              const NewChatCategory(),
              const SizedBox(height: 32),
              Text(
                LocaleKey.contacts.tr,
                style: context.appTextTheme.bold16.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8),
              const Expanded(child: NewChatContacts()),
            ],
          ),
        ),
      ),
    );
  }
}
