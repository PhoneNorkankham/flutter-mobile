part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const OnboardingState._();
  const factory OnboardingState({
    @Default(PageState.initial) PageState pageStatus,
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
    @Default([]) List<Group> groups,
    @Default(LoggedInData()) LoggedInData loggedInData,
  }) = _OnboardingState;
}
