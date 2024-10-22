part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState({
    @Default(PageState.success) PageState pageStatus,
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
    @Default(UserData()) UserData userData,
    File? avatarFile,
  }) = _ProfileState;
}
