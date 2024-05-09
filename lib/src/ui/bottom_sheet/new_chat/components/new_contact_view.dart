import 'package:flutter/material.dart';
import 'package:keepup/src/ui/base/base_page.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_contact_app_bar.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_contact_every.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_contact_form.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_contact_header.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_contact_interval.dart';

class NewContactView extends StatelessWidget {
  const NewContactView({super.key});

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
          child: Column(
            children: [
              const NewContactAppBar(),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.onPrimary,
                  child: const SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        NewContactHeader(),
                        SizedBox(height: 18),
                        NewContactInterval(),
                        SizedBox(height: 16),
                        NewContactEvery(),
                        SizedBox(height: 34),
                        NewContactForm(),
                        SizedBox(height: 36),
                      ],
                    ),
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
