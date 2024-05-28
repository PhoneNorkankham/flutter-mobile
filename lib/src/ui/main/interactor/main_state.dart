part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const MainState._();

  const factory MainState({
    PageCommand? pageCommand,
    @Default(BottomNavType.home) BottomNavType type,
    @Default(false) bool isLoading,
  }) = _MainState;
}
