part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.clearPageCommand() = _ClearPageCommand;

  const factory SettingsEvent.onConfirmedResetData() = _OnConfirmedResetData;
}
