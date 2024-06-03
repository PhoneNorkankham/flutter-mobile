import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/frequency_interval.dart';
import 'package:keepup/src/ui/bottom_sheet/new_group/interactor/new_group_bloc.dart';

class NewGroupInterval extends StatelessWidget {
  const NewGroupInterval({super.key});

  @override
  Widget build(BuildContext context) {
    final NewGroupBloc bloc = context.read();
    return BlocBuilder<NewGroupBloc, NewGroupState>(
      buildWhen: (previous, current) =>
          previous.groupRequest.frequencyInterval != current.groupRequest.frequencyInterval,
      builder: (context, state) {
        return FrequencyInterval(
          type: state.groupRequest.frequencyInterval,
          textColor: Theme.of(context).colorScheme.onPrimary,
          onChanged: (value) => bloc.add(NewGroupEvent.onFrequencyIntervalChanged(value)),
        );
      },
    );
  }
}
