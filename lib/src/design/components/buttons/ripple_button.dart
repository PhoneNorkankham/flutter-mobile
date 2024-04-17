import 'package:flutter/material.dart';

class RippleButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final double radius;
  final Color? backgroundColor;
  final Color? highlightColor;
  final Color? splashColor;
  final ShapeBorder? customBorder;
  final bool enable;

  const RippleButton({
    super.key,
    required this.child,
    this.onTap,
    this.backgroundColor,
    this.radius = 0,
    this.customBorder,
    this.splashColor,
    this.highlightColor,
    this.enable = true,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: enable ? backgroundColor ?? Colors.transparent : Colors.grey.shade300,
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
        highlightColor: highlightColor ?? Colors.black12,
        splashColor: splashColor ?? Colors.black12,
        customBorder:
            customBorder ?? RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        onTap: enable ? onTap : null,
        child: child,
      ),
    );
  }
}
