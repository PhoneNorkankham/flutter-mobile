import 'package:intl/intl.dart';

extension DoubleExtensions on double {
  /// Format as "13,876"
  String get withSeparatorFormat => NumberFormat.decimalPattern().format(this);
}