import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/choice_every_day.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';

class NewGroupEvery extends StatelessWidget {
  const NewGroupEvery({super.key});

  @override
  Widget build(BuildContext context) {
    final NewChatBloc bloc = context.read();
    return BlocBuilder<NewChatBloc, NewChatState>(
      buildWhen: (previous, current) => previous.everyDays != current.everyDays,
      builder: (context, state) {
        return ChoiceEveryDay(
          everyDays: state.everyDays,
          textColor: Theme.of(context).colorScheme.onPrimary,
          onChanged: (everyDays) => bloc.add(NewChatEvent.onFrequencyChanged(everyDays)),
        );
      },
    );
  }
}
