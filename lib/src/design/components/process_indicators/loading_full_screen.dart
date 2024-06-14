import 'package:flutter/material.dart';

class LoadingFullScreen extends StatelessWidget {
  final Widget child;
  final bool loading;
  final Color? backgroundColor;

  const LoadingFullScreen({
    super.key,
    required this.child,
    this.loading = false,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: !loading,
      child: AbsorbPointer(
        absorbing: loading,
        child: Stack(
          children: <Widget>[
            child,
            if (loading)
              Container(
                color: backgroundColor ?? Colors.black54,
                constraints: const BoxConstraints.expand(),
                child: const Center(child: CircularProgressIndicator()),
              ),
          ],
        ),
      ),
    );
  }
}
