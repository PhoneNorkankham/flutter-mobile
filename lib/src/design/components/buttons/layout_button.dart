import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/enums/layout_type.dart';
import 'package:keepup/src/utils/app_shared.dart';

class LayoutButton extends StatelessWidget {
  const LayoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    final AppShared appShared = Get.find();
    return StreamBuilder<LayoutType>(
      stream: appShared.watchLayoutType,
      builder: (context, snapshot) {
        final LayoutType layoutType = snapshot.data ?? LayoutType.list;
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: LayoutType.values.map((type) {
            final bool isSelected = type == layoutType;
            return InkWell(
              onTap: () => appShared.setLayoutType(type),
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.tertiary.withOpacity(0.7) : null,
                  borderRadius: type.borderRadius,
                  border: Border.all(color: Theme.of(context).dividerColor),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                child: Icon(type.icon),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
