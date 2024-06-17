import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/app_bars/app_app_bar.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/contact_detail/components/contact_detail_buttons.dart';
import 'package:keepup/src/ui/contact_detail/components/contact_detail_form.dart';
import 'package:keepup/src/ui/contact_detail/components/contact_detail_header.dart';
import 'package:keepup/src/ui/contact_detail/interactor/contact_detail_bloc.dart';

class ContactDetailView extends StatelessWidget {
  const ContactDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactDetailBloc, ContactDetailState>(
      buildWhen: (previous, current) =>
          previous.contactType != current.contactType || previous.isLoading != current.isLoading,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
          appBar: AppAppBar(
            title: state.contactType.title,
            implyLeading: true,
          ),
          body: AppBody(
            pageState: PageState.success,
            unFocusWhenTouchOutsideInput: true,
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            isLoading: state.isLoading,
            success: const SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ContactDetailHeader(),
                  SizedBox(height: 34),
                  ContactDetailForm(),
                  SizedBox(height: 36),
                  ContactDetailButtons(),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
