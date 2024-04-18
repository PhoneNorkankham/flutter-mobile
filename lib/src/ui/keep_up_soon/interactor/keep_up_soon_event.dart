part of 'keep_up_soon_bloc.dart';

@freezed
class KeepUpSoonEvent with _$KeepUpSoonEvent {
  const factory KeepUpSoonEvent.initial() = _Initial;

  const factory KeepUpSoonEvent.clearPageCommand() = _ClearPageCommand;
}
