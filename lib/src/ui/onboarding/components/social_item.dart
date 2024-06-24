import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/enums/social_type.dart';
import 'package:keepup/src/ui/onboarding/interactor/onboarding_bloc.dart';

class SocialItem extends StatelessWidget {
  final SocialType type;

  const SocialItem({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<OnboardingBloc>().add(OnboardingEvent.onSignInWithSocial(type)),
      child: Image.asset(type.icon),
    );
  }
}
