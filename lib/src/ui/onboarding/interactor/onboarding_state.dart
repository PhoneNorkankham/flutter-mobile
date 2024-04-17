part of 'onboarding_bloc.dart';

@freezed
class OnboardingState extends Equatable with _$OnboardingState {
  const OnboardingState._();
  const factory OnboardingState({
    @Default(PageState.initial) PageState pageStatus,
    PageCommand? pageCommand,
  }) = _SplashState;

  @override
  List<Object?> get props => [
        pageStatus,
        pageCommand,
      ];
}
