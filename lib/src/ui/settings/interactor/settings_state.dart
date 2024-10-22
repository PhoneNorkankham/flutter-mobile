part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();

  const factory SettingsState({
    @Default(PageState.success) PageState pageStatus,
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
  }) = _SettingsState;
}
