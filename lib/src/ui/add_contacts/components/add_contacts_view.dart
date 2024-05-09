import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/design/components/inputs/app_search_input.dart';
import 'package:keepup/src/ui/add_contacts/components/add_contacts_app_bar.dart';
import 'package:keepup/src/ui/add_contacts/components/add_contacts_list.dart';
import 'package:keepup/src/ui/add_contacts/interactor/add_contacts_bloc.dart';

class AddContactsView extends StatelessWidget {
  const AddContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AddContactsAppBar(),
      body: BlocBuilder<AddContactsBloc, AddContactsState>(
        buildWhen: (previous, current) =>
            previous.pageState != current.pageState || previous.isLoading != current.isLoading,
        builder: (context, state) {
          final AddContactsBloc bloc = context.read();
          return AppBody(
            isLoading: state.isLoading,
            pageState: state.pageState,
            unFocusWhenTouchOutsideInput: true,
            success: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 26),
                AppSearchInput(
                  onChanged: (value) => bloc.add(AddContactsEvent.onChangedKeyword(value)),
                ),
                const SizedBox(height: 10),
                const Expanded(child: AddContactsList()),
                const SizedBox(height: 22),
              ],
            ),
          );
        },
      ),
    );
  }
}
