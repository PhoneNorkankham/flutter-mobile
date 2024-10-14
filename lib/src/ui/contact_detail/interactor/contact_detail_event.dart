part of 'contact_detail_bloc.dart';

@freezed
class ContactDetailEvent with _$ContactDetailEvent {
  const factory ContactDetailEvent.initial() = _Initial;

  const factory ContactDetailEvent.clearPageCommand() = _ClearPageCommand;

  const factory ContactDetailEvent.onSelectedGroup(Group group) = _OnSelectedGroup;

  const factory ContactDetailEvent.onInputChanged(
    ContactDetailInputType inputType,
    String value,
  ) = _OnInputChanged;

  const factory ContactDetailEvent.onChangedPhone(
    int index,
    ContactPhone contactPhone,
  ) = _OnChangedPhone;

  const factory ContactDetailEvent.onRemovedPhone(ContactPhone contactPhone) = _OnRemovedPhone;

  const factory ContactDetailEvent.onAddedPhone() = _OnAddedPhone;

  const factory ContactDetailEvent.onSavePressed() = _OnSavePressed;

  const factory ContactDetailEvent.onCancelPressed() = _OnCancelPressed;

  const factory ContactDetailEvent.onChangedAvatar(File file) = _OnChangedAvatar;

  const factory ContactDetailEvent.onChangedAvatarFromUrl(
    BingSearchImageData data,
  ) = _OnChangedAvatarFromUrl;

  const factory ContactDetailEvent.onDeleteContact() = _OnDeleteContact;
}
