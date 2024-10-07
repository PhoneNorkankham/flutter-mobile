import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/design/components/buttons/layout_button.dart';
import 'package:keepup/src/design/components/popup_menu/categories_filter_popup.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/keep_up_soon/components/keep_up_soon_contacts.dart';
import 'package:keepup/src/ui/keep_up_soon/interactor/keep_up_soon_bloc.dart';

class KeepUpSoonView extends StatelessWidget {
  const KeepUpSoonView({super.key});

  @override
  Widget build(BuildContext context) {
    final KeepUpSoonBloc bloc = context.read();
    return Scaffold(
      body: BlocBuilder<KeepUpSoonBloc, KeepUpSoonState>(
        buildWhen: (previous, current) => previous.isLoading != current.isLoading,
        builder: (context, state) {
          return AppBody(
            isLoading: state.isLoading,
            pageState: PageState.success,
            success: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 24),
                  // const KeepUpSoonHeader(),
                  // const SizedBox(height: 28),
                  Row(
                    children: [
                      BlocBuilder<KeepUpSoonBloc, KeepUpSoonState>(
                        buildWhen: (previous, current) =>
                            previous.selectedCategory != current.selectedCategory ||
                            previous.categories != current.categories,
                        builder: (context, state) {
                          return CategoriesFilterPopup(
                            selectedCategory: state.selectedCategory,
                            categories: state.categories,
                            onChanged: (e) => bloc.add(KeepUpSoonEvent.onFilter(e)),
                          );
                        },
                      ),
                      const Spacer(),
                      const LayoutButton(),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // const KeepUpSoonInAWeek(),
                  // const SizedBox(height: 28),
                  // const KeepUpSoonInAMonth(),
                  BlocBuilder<KeepUpSoonBloc, KeepUpSoonState>(
                    buildWhen: (previous, current) =>
                        previous.keepupSoonContacts != current.keepupSoonContacts,
                    builder: (_, state) => KeepUpSoonContacts(contacts: state.keepupSoonContacts),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
