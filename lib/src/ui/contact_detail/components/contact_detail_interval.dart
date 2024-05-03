import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/slider_interval.dart';
import 'package:keepup/src/ui/contact_detail/interactor/contact_detail_bloc.dart';

class ContactDetailInterval extends StatelessWidget {
  const ContactDetailInterval({super.key});

  @override
  Widget build(BuildContext context) {
    final ContactDetailBloc bloc = context.read();
    return BlocBuilder<ContactDetailBloc, ContactDetailState>(
      buildWhen: (previous, current) => previous.interval != current.interval,
      builder: (context, state) {
        return SliderInterval(
          interval: state.interval,
          onChanged: (value) => bloc.add(ContactDetailEvent.onIntervalChanged(value)),
        );
      },
    );
  }
}
