import 'package:flutter/material.dart';
import 'package:keepup/src/ui/base/base_page.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_group_app_bar.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_group_every.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_group_header.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_group_interval.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_group_selected.dart';

class NewGroupView extends StatelessWidget {
  const NewGroupView({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: const Column(
            children: [
              NewGroupAppBar(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      NewGroupHeader(),
                      SizedBox(height: 12),
                      NewGroupInterval(),
                      SizedBox(height: 12),
                      NewGroupEvery(),
                      SizedBox(height: 14),
                      NewGroupSelected(),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
