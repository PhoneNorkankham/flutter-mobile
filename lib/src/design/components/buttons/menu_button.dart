import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:keepup/src/utils/app_assets.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Scaffold.of(context).openEndDrawer(),
      icon: SvgPicture.asset(
        AppAssets.ic_filter_svg,
        colorFilter: ColorFilter.mode(
          Theme.of(context).colorScheme.onSurface,
          BlendMode.srcIn,
        ),
        width: 20,
        height: 20,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
