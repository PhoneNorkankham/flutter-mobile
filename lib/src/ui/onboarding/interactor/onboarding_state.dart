part of 'onboarding_bloc.dart';

@freezed
class OnboardingState extends Equatable with _$OnboardingState {
  const OnboardingState._();
  const factory OnboardingState({
    @Default(PageState.initial) PageState pageStatus,
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
    @Default([]) List<GroupRequest> groups,
    @Default(LoggedInData()) LoggedInData loggedInData,
  }) = _OnboardingState;

  @override
  List<Object?> get props => [
        pageStatus,
        pageCommand,
        groups,
        isLoading,
      ];
}
