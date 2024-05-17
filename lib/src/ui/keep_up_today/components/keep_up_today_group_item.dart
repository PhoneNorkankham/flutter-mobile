import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_item.dart';
import 'package:keepup/src/ui/keep_up_today/interactor/keep_up_today_bloc.dart';

class KeepUpTodayGroupItem extends StatelessWidget {
  final Group group;

  const KeepUpTodayGroupItem({super.key, required this.group});

  @override
  Widget build(BuildContext context) {
    final KeepUpTodayBloc bloc = context.read();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: KeepUpItem(
        name: group.name,
        action: FutureBuilder<bool>(
          future: bloc.isGroupCompleted(group),
          builder: (context, snapshot) {
            final bool isCompleted = snapshot.data ?? false;
            return Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: isCompleted ? const Color(0xFF86C144) : const Color(0xFFFF5722),
                borderRadius: BorderRadius.circular(60),
              ),
              child: Icon(
                isCompleted ? Icons.check : Icons.close,
                size: 14,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            );
          },
        ),
      ),
    );
  }
}
