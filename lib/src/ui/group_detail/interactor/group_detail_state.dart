part of 'group_detail_bloc.dart';

@freezed
class GroupDetailState with _$GroupDetailState {
  const GroupDetailState._();

  const factory GroupDetailState({
    PageCommand? pageCommand,
    @Default(PageState.loading) PageState pageState,
    @Default(GroupType.newGroup) GroupType groupType,
    @Default(false) bool isLoading,
    @Default('') String groupId,
    @Default(GroupRequest()) GroupRequest request,
    @Default('') String keyword,
    @Default([]) List<Contact> contacts,
    File? avatar,
    Group? groupDetail,
  }) = _GroupDetailState;

  List<Contact> getFilterContacts() {
    final List<Contact> filterContacts;
    if (keyword.isEmpty) {
      filterContacts = [...contacts];
    } else {
      filterContacts = [
        ...contacts.where((element) => element.name.toLowerCase().contains(keyword.toLowerCase()))
      ];
    }
    return filterContacts;
  }
}
