part of 'group_detail_bloc.dart';

@freezed
class GroupDetailEvent with _$GroupDetailEvent {
  const factory GroupDetailEvent.initial() = _Initial;

  const factory GroupDetailEvent.clearPageCommand() = _ClearPageCommand;
}
