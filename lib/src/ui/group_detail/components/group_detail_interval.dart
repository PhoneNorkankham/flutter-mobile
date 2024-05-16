import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/frequency_interval.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';

class GroupDetailInterval extends StatelessWidget {
  const GroupDetailInterval({super.key});

  @override
  Widget build(BuildContext context) {
    final GroupDetailBloc bloc = context.read();
    return BlocBuilder<GroupDetailBloc, GroupDetailState>(
      buildWhen: (previous, current) =>
          previous.request.frequencyInterval != current.request.frequencyInterval,
      builder: (context, state) {
        return FrequencyInterval(
          type: state.request.frequencyInterval,
          textColor: Theme.of(context).colorScheme.onPrimary,
          onChanged: (value) => bloc.add(GroupDetailEvent.onFrequencyIntervalChanged(value)),
        );
      },
    );
  }
}
