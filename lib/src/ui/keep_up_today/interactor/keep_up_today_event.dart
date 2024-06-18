part of 'keep_up_today_bloc.dart';

@freezed
class KeepUpTodayEvent with _$KeepUpTodayEvent {
  const factory KeepUpTodayEvent.initial() = _Initial;

  const factory KeepUpTodayEvent.clearPageCommand() = _ClearPageCommand;

  const factory KeepUpTodayEvent.onGotoGroupDetails(Group group) = _OnGotoGroupDetails;

  const factory KeepUpTodayEvent.onKeepUpAllContacts() = _OnKeepUpAllContacts;

  const factory KeepUpTodayEvent.onKeepUpAllGroups() = _OnKeepUpAllGroups;
}
