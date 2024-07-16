import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/design/components/buttons/layout_button.dart';
import 'package:keepup/src/design/components/inputs/app_search_input.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/contacts/components/contact_list.dart';
import 'package:keepup/src/ui/contacts/interactor/contact_bloc.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ContactBloc, ContactState>(
        buildWhen: (previous, current) => previous.pageState != current.pageState,
        builder: (context, state) {
          final ContactBloc bloc = context.read();
          return AppBody(
            pageState: state.pageState,
            unFocusWhenTouchOutsideInput: true,
            success: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 26),
                AppSearchInput(
                  hintText: LocaleKey.searchContacts.tr,
                  onChanged: (value) => bloc.add(ContactEvent.onChangedKeyword(value)),
                ),
                const SizedBox(height: 16),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: LayoutButton(),
                  ),
                ),
                const Expanded(child: ContactList()),
              ],
            ),
          );
        },
      ),
    );
  }
}
