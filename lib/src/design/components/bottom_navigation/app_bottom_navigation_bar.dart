import 'package:flutter/material.dart';
import 'package:keepup/src/design/components/bottom_navigation/app_bottom_navigation_bar_item.dart';
import 'package:keepup/src/enums/bottom_nav_type.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final BottomNavType? selectedType;

  const AppBottomNavigationBar({super.key, this.selectedType});

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [
      ...BottomNavType.values.map((e) => AppBottomNavigationBarItem(
            type: e,
            isSelected: e == selectedType,
          ))
    ];
    if (children.length >= 2 && children.length % 2 == 0) {
      children.insert(children.length ~/ 2, const Expanded(child: SizedBox()));
    }
    return BottomAppBar(
      notchMargin: 6,
      elevation: 20.0,
      padding: EdgeInsets.zero,
      shape: const CircularNotchedRectangle(),
      shadowColor: Theme.of(context).colorScheme.onSurface,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      ),
    );
  }
}
