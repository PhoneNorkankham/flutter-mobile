import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/app_bars/app_app_bar.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/group_detail/components/group_detail_contacts.dart';
import 'package:keepup/src/ui/group_detail/components/group_detail_delete.dart';
import 'package:keepup/src/ui/group_detail/components/group_detail_description.dart';
import 'package:keepup/src/ui/group_detail/components/group_detail_header.dart';
import 'package:keepup/src/ui/group_detail/components/group_detail_settings.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';

class GroupDetailView extends StatelessWidget {
  const GroupDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupDetailBloc, GroupDetailState>(
      buildWhen: (previous, current) =>
          previous.pageState != current.pageState || previous.isLoading != current.isLoading,
      builder: (context, state) {
        return Scaffold(
          appBar: AppAppBar(
            title: LocaleKey.groupDetail.tr,
            implyLeading: true,
          ),
          body: AppBody(
            isLoading: state.isLoading,
            pageState: state.pageState,
            unFocusWhenTouchOutsideInput: true,
            success: const SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GroupDetailHeader(),
                  SizedBox(height: 26),
                  GroupDetailDescription(),
                  SizedBox(height: 16),
                  GroupDetailSettings(),
                  SizedBox(height: 26),
                  GroupDetailContacts(),
                  SizedBox(height: 16),
                  GroupDetailDelete(),
                  SizedBox(height: 26),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
