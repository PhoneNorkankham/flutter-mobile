part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.initial() = _Initial;

  const factory MainEvent.clearPageCommand() = _ClearPageCommand;

  const factory MainEvent.onSelectedTabType(BottomNavType type) = _OnSelectedTabType;
}
