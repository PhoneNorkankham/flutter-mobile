part of 'main_bloc.dart';

@freezed
class MainState extends Equatable with _$MainState {
  const MainState._();

  const factory MainState({
    @Default(PageState.initial) PageState pageStatus,
    PageCommand? pageCommand,
    @Default(BottomNavType.today) BottomNavType currentPage,
  }) = _MainState;

  @override
  List<Object?> get props => [
        pageStatus,
        pageCommand,
        currentPage,
      ];
}
