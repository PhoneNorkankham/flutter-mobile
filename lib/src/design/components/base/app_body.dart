import 'package:flutter/material.dart';
import 'package:keepup/src/design/components/process_indicators/loading_full_screen.dart';
import 'package:keepup/src/extensions/scope_extensions.dart';
import 'package:keepup/src/ui/base/base_page.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';

/// Generic Widget to be used mostly inside a Scaffold body
/// You must pass at least a page state and a success widget
class AppBody extends StatelessWidget {
  final PageState pageState;
  final Widget success;
  final Widget? initial;
  final Widget? loading;
  final Widget? failure;
  final bool isLoading;
  final bool unFocusWhenTouchOutsideInput;
  final Color? backgroundColor;

  const AppBody({
    super.key,
    required this.pageState,
    required this.success,
    this.initial,
    this.loading,
    this.failure,
    this.isLoading = false,
    this.unFocusWhenTouchOutsideInput = false,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      child: switch (pageState) {
        PageState.initial => initial ?? const SizedBox.shrink(),
        PageState.loading => loading ?? const Center(child: CircularProgressIndicator.adaptive()),
        PageState.failure => failure ?? const SizedBox.shrink(),
        PageState.success => BasePage(
            unFocusWhenTouchOutsideInput: unFocusWhenTouchOutsideInput,
            child: success.let((self) => LoadingFullScreen(loading: isLoading, child: self)),
          )
      },
    );
  }
}
