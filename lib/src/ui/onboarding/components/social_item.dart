import 'package:flutter/material.dart';

class SocialItem extends StatelessWidget {
  final String pathIcon;

  const SocialItem({super.key, required this.pathIcon});

  @override
  Widget build(BuildContext context) {
    return Image.asset(pathIcon);
  }
}
