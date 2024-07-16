import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/design/components/buttons/layout_button.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/keep_up_soon/components/keep_up_soon_header.dart';
import 'package:keepup/src/ui/keep_up_soon/components/keep_up_soon_in_a_month.dart';
import 'package:keepup/src/ui/keep_up_soon/components/keep_up_soon_in_a_week.dart';
import 'package:keepup/src/ui/keep_up_soon/interactor/keep_up_soon_bloc.dart';

class KeepUpSoonView extends StatelessWidget {
  const KeepUpSoonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<KeepUpSoonBloc, KeepUpSoonState>(
        buildWhen: (previous, current) => previous.isLoading != current.isLoading,
        builder: (context, state) {
          return AppBody(
            isLoading: state.isLoading,
            pageState: PageState.success,
            success: const SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 24),
                  KeepUpSoonHeader(),
                  SizedBox(height: 28),
                  Align(
                    alignment: Alignment.centerRight,
                    child: LayoutButton(),
                  ),
                  SizedBox(height: 16),
                  KeepUpSoonInAWeek(),
                  SizedBox(height: 28),
                  KeepUpSoonInAMonth(),
                  SizedBox(height: 50),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
