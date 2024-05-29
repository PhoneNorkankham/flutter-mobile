part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.initial() = _Initial;

  const factory MainEvent.clearPageCommand() = _ClearPageCommand;

  const factory MainEvent.onSelectedTabType(BottomNavType type) = _OnSelectedTabType;

  const factory MainEvent.onDrawerItemPressed(AppDrawerType type) = _OnDrawerItemPressed;

  const factory MainEvent.onConfirmedLogout() = _OnConfirmedLogout;

  const factory MainEvent.onConfirmedResetData() = _OnConfirmedResetData;

  const factory MainEvent.onConfirmedDeleteAccount() = _OnConfirmedDeleteAccount;
}
