part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.initial() = _Initial;

  const factory OnboardingEvent.clearPageCommand() = _ClearPageCommand;
}
