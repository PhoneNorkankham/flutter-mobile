part of 'keep_up_soon_bloc.dart';

@freezed
class KeepUpSoonState with _$KeepUpSoonState {
  const KeepUpSoonState._();

  const factory KeepUpSoonState({
    PageCommand? pageCommand,
  }) = _KeepUpSoonState;
}
