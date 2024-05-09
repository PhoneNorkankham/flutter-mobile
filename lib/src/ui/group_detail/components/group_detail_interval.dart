import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/slider_interval.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';

class GroupDetailInterval extends StatelessWidget {
  const GroupDetailInterval({super.key});

  @override
  Widget build(BuildContext context) {
    final GroupDetailBloc bloc = context.read();
    return BlocBuilder<GroupDetailBloc, GroupDetailState>(
      buildWhen: (previous, current) => previous.interval != current.interval,
      builder: (context, state) {
        return SliderInterval(
          interval: state.interval,
          textColor: Theme.of(context).colorScheme.onPrimary,
          onChanged: (value) => bloc.add(GroupDetailEvent.onFrequencyIntervalChanged(value)),
        );
      },
    );
  }
}
