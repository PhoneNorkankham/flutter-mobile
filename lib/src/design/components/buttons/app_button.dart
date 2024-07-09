import 'package:flutter/material.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/extensions/scope_extensions.dart';
import 'package:keepup/src/extensions/string_extensions.dart';

class AppButton extends StatelessWidget {
  final AppButtonType buttonType;
  final Widget? icon;
  final Widget? child;
  final String? title;
  final VoidCallback? onPressed;
  final bool isLoading;
  final double loadingIconSize;
  final double? radius;
  final EdgeInsets? titlePadding;

  const AppButton({
    super.key,
    this.buttonType = AppButtonType.primary,
    this.onPressed,
    this.title,
    this.child,
    this.icon,
    this.isLoading = false,
    this.loadingIconSize = 24,
    this.radius,
    this.titlePadding,
  });

  @override
  Widget build(BuildContext context) {
    final buttonStyle = buttonType.buttonStyle(context, radius);
    if (title.isNullOrEmpty && icon == null && child == null) return const SizedBox.shrink();
    return (isLoading
            ? _Loading(loadingIconSize)
            : Builder(
                builder: (_) {
                  final List<InlineSpan> items = [];
                  if (child != null) {
                    items.add(
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: child!,
                      ),
                    );
                  } else {
                    icon?.let((self) {
                      items.add(
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.only(right: title.isNotNullOrEmpty ? 5.0 : 0),
                            child: self,
                          ),
                        ),
                      );
                    });
                    title?.let(
                      (self) => items.add(
                        titlePadding?.let((it) => WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Padding(padding: it, child: Text(self)),
                                )) ??
                            TextSpan(text: self),
                      ),
                    );
                  }
                  return (child ?? title)?.let((self) => FittedBox(
                            fit: BoxFit.scaleDown,
                            child:
                                Text.rich(TextSpan(children: items), textAlign: TextAlign.center),
                          )) ??
                      icon!;
                },
              ))
        .let(
      (self) => buttonType.isOutlined
          ? OutlinedButton(style: buttonStyle, onPressed: onPressed, child: self)
          : ElevatedButton(style: buttonStyle, onPressed: onPressed, child: self),
    );
  }
}

class _Loading extends StatelessWidget {
  final double iconSize;

  const _Loading(this.iconSize);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: iconSize,
        height: iconSize,
        child: const CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      ),
    );
  }
}
