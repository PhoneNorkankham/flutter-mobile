part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.onInitial() = _OnInitial;

  const factory MainEvent.onBottomNavigationPageTapped(BottomNavType page) =
      _OnBottomNavigationPageTapped;

  const factory MainEvent.onClearPageCommand() = _OnClearPageCommand;
}
