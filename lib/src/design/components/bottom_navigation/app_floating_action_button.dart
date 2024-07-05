import 'package:flutter/material.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/new_chat_bottom_sheet.dart';

class AppFloatingActionButton extends StatelessWidget {
  const AppFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => NewChatBottomSheet.show(),
      elevation: 5,
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Icon(
        Icons.add,
        size: 36,
        color: Theme.of(context).colorScheme.onSurface,
      ),
    );
  }
}
