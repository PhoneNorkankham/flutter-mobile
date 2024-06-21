part of 'group_detail_bloc.dart';

@freezed
class GroupDetailEvent with _$GroupDetailEvent {
  const factory GroupDetailEvent.initial() = _Initial;

  const factory GroupDetailEvent.clearPageCommand() = _ClearPageCommand;

  const factory GroupDetailEvent.onChangedKeyword(String keyword) = _OnChangedKeyword;

  const factory GroupDetailEvent.onFrequencyIntervalChanged(
    FrequencyIntervalType frequencyIntervalType,
  ) = _OnFrequencyIntervalChanged;

  const factory GroupDetailEvent.onNameChanged(String value) = _OnNameChanged;

  const factory GroupDetailEvent.onSavePressed() = _OnSavePressed;

  const factory GroupDetailEvent.onCancelPressed() = _OnCancelPressed;

  const factory GroupDetailEvent.onChangedAvatar(File file) = _OnChangedAvatar;

  const factory GroupDetailEvent.onRemoveContact(ContactRequest contact) = _OnRemoveContact;

  const factory GroupDetailEvent.onDeleteGroup() = _OnDeleteGroup;

  const factory GroupDetailEvent.onAddedMembers(List<ContactRequest> contacts) = _OnAddedMembers;
}
