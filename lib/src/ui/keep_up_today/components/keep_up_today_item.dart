import 'package:flutter/material.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_item.dart';

class KeepUp {
  final String name;
  final String avatar;
  final bool isDone;

  KeepUp({this.name = '', this.avatar = '', this.isDone = false});
}

class KeepUpTodayItem extends StatelessWidget {
  final KeepUp keepUp;

  const KeepUpTodayItem({super.key, required this.keepUp});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: KeepUpItem(
        name: keepUp.name,
        action: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: keepUp.isDone ? const Color(0xFF86C144) : const Color(0xFFFF5722),
            borderRadius: BorderRadius.circular(60),
          ),
          child: Icon(
            keepUp.isDone ? Icons.check : Icons.close,
            size: 14,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
