// int Extensions
import 'package:flutter/material.dart';

/// Tai cac UI, Widget sau này chỉ cần gõ 6.height or 6.width thay vì phải ghi SizedBox(width: 6), SizedBox(height: 6)
extension IntExtensions on int? {
  /// Leaves given height of space
  Widget get height => SizedBox(height: this?.toDouble());

  /// Leaves given width of space
  Widget get width => SizedBox(width: this?.toDouble());
}
