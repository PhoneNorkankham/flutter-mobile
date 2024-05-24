part of 'keep_up_soon_bloc.dart';

@freezed
class KeepUpSoonEvent with _$KeepUpSoonEvent {
  const factory KeepUpSoonEvent.initial() = _Initial;

  const factory KeepUpSoonEvent.clearPageCommand() = _ClearPageCommand;

  const factory KeepUpSoonEvent.onFetchWeekContacts() = _OnFetchWeekContacts;

  const factory KeepUpSoonEvent.onFetchMonthContacts() = _OnFetchMonthContacts;

  const factory KeepUpSoonEvent.onChangedType(KeepUpSoonType type) = _OnChangedType;

  const factory KeepUpSoonEvent.onKeepUpContact(Contact contact) = _OnKeepUpContact;

  const factory KeepUpSoonEvent.onKeepUpGroup(Group group) = _OnKeepUpGroup;
}
