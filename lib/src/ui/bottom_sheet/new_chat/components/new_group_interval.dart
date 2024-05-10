import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/slider_interval.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';

class NewGroupInterval extends StatelessWidget {
  const NewGroupInterval({super.key});

  @override
  Widget build(BuildContext context) {
    final NewChatBloc bloc = context.read();
    return BlocBuilder<NewChatBloc, NewChatState>(
      buildWhen: (previous, current) => previous.interval != current.interval,
      builder: (context, state) {
        return SliderInterval(
          interval: state.interval,
          textColor: Theme.of(context).colorScheme.onPrimary,
          onChanged: (value) => bloc.add(NewChatEvent.onIntervalChanged(value)),
        );
      },
    );
  }
}
