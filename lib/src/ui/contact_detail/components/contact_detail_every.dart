import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/choice_every_day.dart';
import 'package:keepup/src/ui/contact_detail/interactor/contact_detail_bloc.dart';

class ContactDetailEvery extends StatelessWidget {
  const ContactDetailEvery({super.key});

  @override
  Widget build(BuildContext context) {
    final ContactDetailBloc bloc = context.read();
    return BlocBuilder<ContactDetailBloc, ContactDetailState>(
      buildWhen: (previous, current) => previous.everyDays != current.everyDays,
      builder: (context, state) {
        return ChoiceEveryDay(
          everyDays: state.everyDays,
          onChanged: (everyDays) => bloc.add(ContactDetailEvent.onFrequencyChanged(everyDays)),
        );
      },
    );
  }
}
