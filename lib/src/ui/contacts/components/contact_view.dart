import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/app_bars/app_app_bar.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/design/components/base/app_drawer.dart';
import 'package:keepup/src/design/components/bottom_navigation/app_bottom_navigation_bar.dart';
import 'package:keepup/src/design/components/buttons/menu_button.dart';
import 'package:keepup/src/design/components/inputs/app_search_input.dart';
import 'package:keepup/src/enums/bottom_nav_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/contacts/components/add_contact_button.dart';
import 'package:keepup/src/ui/contacts/components/contact_item.dart';
import 'package:keepup/src/ui/contacts/interactor/contact_bloc.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    final contacts = [
      Contact(name: 'Vanisa Legon'),
      Contact(name: 'Permir Jinkan'),
      Contact(name: 'Peiris Gao'),
      Contact(name: 'Valerie Tang'),
      Contact(name: 'Jamison Shaffer'),
      Contact(name: 'Kyro Peters'),
      Contact(name: 'Leila Hurley'),
      Contact(name: 'Van Calhoun'),
      Contact(name: 'Andrew Lyons'),
    ];

    final bloc = context.read<ContactBloc>();

    return Scaffold(
      appBar: AppAppBar(
        title: LocaleKey.contacts.tr,
        implyLeading: true,
        actions: const [MenuButton()],
      ),
      body: AppBody(
        pageState: PageState.success,
        unFocusWhenTouchOutsideInput: true,
        success: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 26),
            const AppSearchInput(),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                itemCount: contacts.length,
                itemBuilder: (context, index) => ContactItem(
                  onPressed: (contact) => bloc.add(ContactEvent.onGotoContactDetails(contact)),
                  contact: contacts.elementAt(index),
                ),
                separatorBuilder: (context, index) => const SizedBox(height: 4),
              ),
            ),
            const SizedBox(height: 22),
            const AddContactButton(),
            const SizedBox(height: 15),
          ],
        ),
      ),
      endDrawer: const AppDrawer(),
      bottomNavigationBar: const AppBottomNavigationBar(selectedType: BottomNavType.contacts),
    );
  }
}
