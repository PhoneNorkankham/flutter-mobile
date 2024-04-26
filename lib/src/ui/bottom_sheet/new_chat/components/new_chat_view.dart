import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/inputs/app_search_input.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/base_page.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_chat_category.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_chat_contacts.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_chat_header.dart';

class NewChatView extends StatelessWidget {
  const NewChatView({super.key});

  @override
  Widget build(BuildContext context) {
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
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 16),
              const NewChatHeader(),
              const SizedBox(height: 18),
              AppSearchInput(
                margin: EdgeInsets.zero,
                hintText: LocaleKey.searchNameOrNumber.tr,
              ),
              const SizedBox(height: 16),
              const NewChatCategory(),
              const SizedBox(height: 16),
              const Expanded(child: NewChatContacts()),
            ],
          ),
        ),
      ),
    );
  }
}
