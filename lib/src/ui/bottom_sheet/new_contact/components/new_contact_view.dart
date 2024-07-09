import 'package:flutter/material.dart';
import 'package:keepup/src/ui//bottom_sheet/new_contact/components/new_contact_app_bar.dart';
import 'package:keepup/src/ui//bottom_sheet/new_contact/components/new_contact_form.dart';
import 'package:keepup/src/ui//bottom_sheet/new_contact/components/new_contact_header.dart';
import 'package:keepup/src/ui/base/base_page.dart';

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
          child: const Column(
            children: [
              NewContactAppBar(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      NewContactHeader(),
                      SizedBox(height: 34),
                      NewContactForm(),
                      SizedBox(height: 36),
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
