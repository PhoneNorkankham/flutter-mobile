part of 'group_bloc.dart';

@freezed
class GroupEvent with _$GroupEvent {
  const factory GroupEvent.initial() = _Initial;

  const factory GroupEvent.clearPageCommand() = _ClearPageCommand;

  const factory GroupEvent.onGotoNewGroup() = _OnGotoNewGroup;

  const factory GroupEvent.onGotoGroupDetails(Group group) = _OnGotoGroupDetails;
}
