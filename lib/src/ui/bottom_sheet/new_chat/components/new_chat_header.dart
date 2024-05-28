import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewChatHeader extends StatelessWidget {
  const NewChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 28,
          height: 28,
          child: InkWell(
            onTap: () => Get.back(),
            child: Container(
              constraints: const BoxConstraints.expand(),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Icon(
                Icons.close,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
