part of 'keep_up_today_bloc.dart';

@freezed
class KeepUpTodayState with _$KeepUpTodayState {
  const KeepUpTodayState._();

  const factory KeepUpTodayState({
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
    @Default([]) List<Contact> contacts,
  }) = _KeepUpTodayState;
}
