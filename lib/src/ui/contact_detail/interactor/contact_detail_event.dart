part of 'contact_detail_bloc.dart';

@freezed
class ContactDetailEvent with _$ContactDetailEvent {
  const factory ContactDetailEvent.initial() = _Initial;

  const factory ContactDetailEvent.clearPageCommand() = _ClearPageCommand;

  const factory ContactDetailEvent.onIntervalChanged(double interval) = _OnIntervalChanged;

  const factory ContactDetailEvent.onFrequencyChanged(List<ChoiceEveryDayData> frequency) =
      _OnFrequencyChanged;

  const factory ContactDetailEvent.onInputChanged(
    ContactDetailInputType inputType,
    String value,
  ) = _OnInputChanged;

  const factory ContactDetailEvent.onSavePressed() = _OnSavePressed;

  const factory ContactDetailEvent.onCancelPressed() = _OnCancelPressed;

  const factory ContactDetailEvent.onChangedAvatar(File file) = _OnChangedAvatar;

  const factory ContactDetailEvent.onDeleteContact() = _OnDeleteContact;
}
