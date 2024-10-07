import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/design/components/buttons/layout_button.dart';
import 'package:keepup/src/design/components/popup_menu/categories_filter_popup.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/keep_up_today/components/keep_up_today_contacts.dart';
import 'package:keepup/src/ui/keep_up_today/interactor/keep_up_today_bloc.dart';

class KeepUpTodayView extends StatelessWidget {
  const KeepUpTodayView({super.key});

  @override
  Widget build(BuildContext context) {
    final KeepUpTodayBloc bloc = context.read();
    return Scaffold(
      body: BlocBuilder<KeepUpTodayBloc, KeepUpTodayState>(
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
                  // const KeepUpTodayHeader(),
                  // const SizedBox(height: 28),
                  Row(
                    children: [
                      BlocBuilder<KeepUpTodayBloc, KeepUpTodayState>(
                        buildWhen: (previous, current) =>
                            previous.selectedCategory != current.selectedCategory ||
                            previous.categories != current.categories,
                        builder: (context, state) {
                          return CategoriesFilterPopup(
                            selectedCategory: state.selectedCategory,
                            categories: state.categories,
                            onChanged: (e) => bloc.add(KeepUpTodayEvent.onFilter(e)),
                          );
                        },
                      ),
                      const Spacer(),
                      const LayoutButton(),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const KeepUpTodayContacts(),
                  // const KeepUpTodayGroups(),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
