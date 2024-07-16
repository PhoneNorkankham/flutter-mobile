import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'layout_type.g.dart';

@HiveType(typeId: 2)
enum LayoutType {
  @HiveField(0)
  list,
  @HiveField(1)
  grid;

  IconData get icon {
    return switch (this) {
      LayoutType.list => Icons.menu,
      LayoutType.grid => Icons.grid_view_rounded,
    };
  }

  BorderRadius get borderRadius {
    return switch (this) {
      LayoutType.list => const BorderRadius.horizontal(left: Radius.circular(80)),
      LayoutType.grid => const BorderRadius.horizontal(right: Radius.circular(80)),
    };
  }

  bool get isGridView => this == LayoutType.grid;
}
