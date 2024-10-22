part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.initial() = _Initial;

  const factory ProfileEvent.clearPageCommand() = _ClearPageCommand;

  const factory ProfileEvent.onChangedAvatar(File file) = _OnChangedAvatar;

  const factory ProfileEvent.onChangedAvatarFromUrl(
    BingSearchImageData data,
  ) = _OnChangedAvatarFromUrl;

  const factory ProfileEvent.onChangedName(String value) = _OnChangedName;

  const factory ProfileEvent.onConfirmedLogout() = _OnConfirmedLogout;

  const factory ProfileEvent.onConfirmedDeleteAccount() = _OnConfirmedDeleteAccount;
}
