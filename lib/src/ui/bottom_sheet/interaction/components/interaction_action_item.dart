import 'package:flutter/material.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/interaction_type.dart';

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
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(4.0),
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Icon(type.icon, color: Colors.green),
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
    );
  }
}
