import 'package:flutter/material.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';

class NewContactHeader extends StatelessWidget {
  const NewContactHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: const Center(child: AppCircleAvatar(url: '', radius: 50)),
    );
  }
}
