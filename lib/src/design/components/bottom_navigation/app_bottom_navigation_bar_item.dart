import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/bottom_nav_type.dart';
import 'package:keepup/src/ui/main/interactor/main_bloc.dart';

class AppBottomNavigationBarItem extends StatelessWidget {
  final BottomNavType type;
  final bool isSelected;

  const AppBottomNavigationBarItem({
    super.key,
    required this.type,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final MainBloc bloc = Get.find();
    return Expanded(
      child: InkWell(
        onTap: isSelected ? null : () => bloc.add(MainEvent.onSelectedTabType(type)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              type.icon,
              width: 20,
              height: 20,
              colorFilter: ColorFilter.mode(
                isSelected
                    ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor!
                    : Theme.of(context).bottomNavigationBarTheme.unselectedItemColor!,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              type.name,
              textAlign: TextAlign.center,
              style: context.appTextTheme.bold10.copyWith(
                color: isSelected ? AppColors.selectedItemColor : AppColors.unselectedItemColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
