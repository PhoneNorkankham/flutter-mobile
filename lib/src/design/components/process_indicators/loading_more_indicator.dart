import 'package:flutter/material.dart';
import 'package:keepup/src/design/components/process_indicators/custom_circular_progress.dart';

class LoadingMoreIndicator extends StatelessWidget {
  const LoadingMoreIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 20,
        height: 20,
        margin: const EdgeInsets.all(8.0),
        child: const CustomCircularProgress(),
      ),
    );
  }
}
