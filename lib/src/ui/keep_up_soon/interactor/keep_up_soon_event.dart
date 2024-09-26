part of 'keep_up_soon_bloc.dart';

@freezed
class KeepUpSoonEvent with _$KeepUpSoonEvent {
  const factory KeepUpSoonEvent.initial() = _Initial;

  const factory KeepUpSoonEvent.clearPageCommand() = _ClearPageCommand;

  const factory KeepUpSoonEvent.onFetchGroups() = _OnFetchGroups;

  const factory KeepUpSoonEvent.onFetchContacts() = _OnFetchContacts;

  const factory KeepUpSoonEvent.onChangedType(KeepUpSoonType type) = _OnChangedType;

  const factory KeepUpSoonEvent.onKeepUpContact(Contact contact) = _OnKeepUpContact;

  const factory KeepUpSoonEvent.onKeepUpGroup(Group group) = _OnKeepUpGroup;

  const factory KeepUpSoonEvent.onGotoGroupDetails(Group group) = _OnGotoGroupDetails;

  const factory KeepUpSoonEvent.onFilter(Category category) = _OnFilter;
}
