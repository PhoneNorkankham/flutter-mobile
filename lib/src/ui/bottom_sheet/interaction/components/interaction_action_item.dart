import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/interaction_type.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interactor/interaction_bloc.dart';

class InteractionActionItem extends StatelessWidget {
  final InteractionMethodType type;
  final VoidCallback? onPressed;

  const InteractionActionItem({
    super.key,
    required this.type,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InteractionBloc, InteractionState>(
      buildWhen: (previous, current) => previous.contact?.phoneNo != current.contact?.phoneNo,
      builder: (context, state) {
        bool isEnabled = true;
        switch (type) {
          case InteractionMethodType.KeepUp:
          case InteractionMethodType.Contact:
            break;
          case InteractionMethodType.Message:
          case InteractionMethodType.Call:
            String phoneNo = state.contact?.phoneNo ?? '';
            if (phoneNo.isEmpty) isEnabled = false;
            break;
        }

        return GestureDetector(
          onTap: isEnabled ? onPressed : null,
          child: Container(
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Opacity(
              opacity: isEnabled ? 1 : 0.5,
              child: Column(
                children: [
                  Icon(type.icon, color: Theme.of(context).colorScheme.onPrimary),
                  const SizedBox(height: 8),
                  Text(
                    type.name,
                    textAlign: TextAlign.center,
                    style: context.appTextTheme.medium13.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
