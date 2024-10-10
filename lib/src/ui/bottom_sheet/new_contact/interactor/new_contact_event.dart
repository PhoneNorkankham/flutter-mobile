part of 'new_contact_bloc.dart';

@freezed
class NewContactEvent with _$NewContactEvent {
  const factory NewContactEvent.initial() = _Initial;

  const factory NewContactEvent.clearPageCommand() = _ClearPageCommand;

  const factory NewContactEvent.onSelectedGroup(Group group) = _OnSelectedGroup;

  const factory NewContactEvent.onCreateNewContact() = _OnCreateNewContact;

  const factory NewContactEvent.onInputChanged(
    NewContactInputType inputType,
    String value,
  ) = _OnInputChanged;

  const factory NewContactEvent.onChangedAvatar(File file) = _OnChangedAvatar;

  const factory NewContactEvent.onChangedAvatarFromUrl(
    BingSearchImageData data,
  ) = _OnChangedAvatarFromUrl;
}
