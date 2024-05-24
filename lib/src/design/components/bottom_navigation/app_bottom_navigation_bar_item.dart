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
    return Expanded(
      child: Material(
        child: InkWell(
          onTap:
              isSelected ? null : () => Get.find<MainBloc>().add(MainEvent.onSelectedTabType(type)),
          highlightColor: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
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
              const SizedBox(height: 5),
              Text(
                type.name,
                textAlign: TextAlign.center,
                style: context.appTextTheme.bold10.copyWith(
                  color: isSelected ? AppColors.selectedItemColor : AppColors.unselectedItemColor,
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
