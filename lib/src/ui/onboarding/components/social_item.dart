import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/ui/onboarding/interactor/onboarding_bloc.dart';

class SocialItem extends StatelessWidget {
  final String pathIcon;

  const SocialItem({super.key, required this.pathIcon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<OnboardingBloc>().add(const OnboardingEvent.gotoMain()),
      child: Image.asset(pathIcon),
    );
  }
}
