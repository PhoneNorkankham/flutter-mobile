part of 'group_detail_bloc.dart';

@freezed
class GroupDetailState with _$GroupDetailState {
  const GroupDetailState._();

  const factory GroupDetailState({
    PageCommand? pageCommand,
    @Default(PageState.loading) PageState pageState,
    @Default(false) bool isLoading,
    @Default('') String groupId,
    @Default(GroupRequest()) GroupRequest request,
    @Default([]) List<Contact> contacts,
    File? avatarFile,
    Group? groupDetail,
    @Default(false) bool openedSeeAll,
  }) = _GroupDetailState;

  bool get hiddenSeeAllButton => contacts.length <= 3 || openedSeeAll;
}
