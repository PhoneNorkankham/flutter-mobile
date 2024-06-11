import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/toasts/app_toasts.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_category_type.dart';
import 'package:keepup/src/ui/bottom_sheet/new_contact/new_contact_bottom_sheet.dart';
import 'package:keepup/src/ui/bottom_sheet/new_group/new_group_bottom_sheet.dart';
import 'package:keepup/src/ui/bottom_sheet/select_group/select_group_bottom_sheet.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';

class NewChatCategory extends StatelessWidget {
  const NewChatCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: BlocBuilder<NewChatBloc, NewChatState>(
        buildWhen: (previous, current) => previous.categories != current.categories,
        builder: (context, state) {
          final List<NewChatCategoryType> categories = state.categories;
          return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final NewChatCategoryType type = categories.elementAt(index);
              return InkWell(
                onTap: () {
                  switch (type) {
                    case NewChatCategoryType.newGroup:
                      NewGroupBottomSheet.show().then((value) {
                        if (value is PopResult && value.status) {
                          showSuccessToast(LocaleKey.groupCreatedSuccessfully.tr);
                        }
                      });
                      return;
                    case NewChatCategoryType.addContactsToGroup:
                      SelectGroupBottomSheet.show().then((value) {
                        if (value is PopResult && value.status) {
                          showSuccessToast(LocaleKey.addContactsToGroupSuccessfully.tr);
                        }
                      });
                      return;
                    case NewChatCategoryType.newContact:
                      NewContactBottomSheet.show().then((value) {
                        if (value is PopResult && value.status) {
                          showSuccessToast(LocaleKey.contactCreatedSuccessfully.tr);
                        }
                      });
                      return;
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          type.icon,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          type.title,
                          style: context.appTextTheme.medium16.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => Container(
              height: 1,
              margin: const EdgeInsets.only(left: 68, right: 16),
              color: Theme.of(context).colorScheme.primary,
            ),
          );
        },
      ),
    );
  }
}
