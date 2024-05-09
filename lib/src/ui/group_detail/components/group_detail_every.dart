import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/choice_every_day.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';

class GroupDetailEvery extends StatelessWidget {
  const GroupDetailEvery({super.key});

  @override
  Widget build(BuildContext context) {
    final GroupDetailBloc bloc = context.read();
    return BlocBuilder<GroupDetailBloc, GroupDetailState>(
      buildWhen: (previous, current) => previous.everyDays != current.everyDays,
      builder: (context, state) {
        return ChoiceEveryDay(
          textColor: Theme.of(context).colorScheme.onPrimary,
          everyDays: state.everyDays,
          onChanged: (everyDays) => bloc.add(GroupDetailEvent.onFrequencyChanged(everyDays)),
        );
      },
    );
  }
}
