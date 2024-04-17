part of 'splash_bloc.dart';

@freezed
class SplashState extends Equatable with _$SplashState {
  const SplashState._();
  const factory SplashState({
    @Default(PageState.initial) PageState pageStatus,
    PageCommand? pageCommand,
  }) = _SplashState;

  @override
  List<Object?> get props => [
        pageStatus,
        pageCommand,
      ];
}
