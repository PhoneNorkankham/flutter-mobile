import 'package:flutter/material.dart';
import 'package:keepup/src/design/components/bottom_navigation/app_bottom_navigation_bar_item.dart';
import 'package:keepup/src/enums/bottom_nav_type.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final BottomNavType? selectedType;

  const AppBottomNavigationBar({Key? key, this.selectedType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double additionalBottomPadding = MediaQuery.viewPaddingOf(context).bottom;
    return Container(
      color: Theme.of(context).colorScheme.onPrimary,
      constraints: BoxConstraints(
        minHeight: kBottomNavigationBarHeight + additionalBottomPadding,
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: additionalBottomPadding),
        child: MediaQuery.removePadding(
          context: context,
          removeBottom: true,
          child: DefaultTextStyle.merge(
            overflow: TextOverflow.ellipsis,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: BottomNavType.values
                  .map((e) => AppBottomNavigationBarItem(
                        type: e,
                        isSelected: e == selectedType,
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
