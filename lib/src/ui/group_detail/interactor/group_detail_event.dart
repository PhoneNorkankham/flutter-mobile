part of 'group_detail_bloc.dart';

@freezed
class GroupDetailEvent with _$GroupDetailEvent {
  const factory GroupDetailEvent.initial() = _Initial;

  const factory GroupDetailEvent.clearPageCommand() = _ClearPageCommand;

  const factory GroupDetailEvent.onAvatarChanged(File file) = _OnAvatarChanged;

  const factory GroupDetailEvent.onNameChanged(String value) = _OnNameChanged;

  const factory GroupDetailEvent.onDescriptionChanged(String value) = _OnDescriptionChanged;

  const factory GroupDetailEvent.onFrequencyIntervalChanged(
    FrequencyIntervalType frequencyIntervalType,
  ) = _OnFrequencyIntervalChanged;

  const factory GroupDetailEvent.onCategoryChanged(Category category) = _OnCategoryChanged;

  const factory GroupDetailEvent.onChangedContacts() = _OnChangedContacts;

  const factory GroupDetailEvent.onOpenedSeeAll() = _OnOpenedSeeAll;

  const factory GroupDetailEvent.onDeleteGroup() = _OnDeleteGroup;
}
