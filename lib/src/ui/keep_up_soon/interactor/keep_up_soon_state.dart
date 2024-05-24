part of 'keep_up_soon_bloc.dart';

@freezed
class KeepUpSoonState with _$KeepUpSoonState {
  const KeepUpSoonState._();

  const factory KeepUpSoonState({
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
    @Default(KeepUpSoonType.groups) KeepUpSoonType type,
    @Default([]) List<Contact> weekContacts,
    @Default([]) List<Contact> monthContacts,
  }) = _KeepUpSoonState;
}
