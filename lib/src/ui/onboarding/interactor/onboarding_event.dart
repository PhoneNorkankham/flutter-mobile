part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.initial() = _Initial;

  const factory OnboardingEvent.clearPageCommand() = _ClearPageCommand;

  const factory OnboardingEvent.onLoginLater() = _OnLoginLater;

  const factory OnboardingEvent.onSignInWithSocial(SocialType type) = _OnSignInWithSocial;
}
