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
    @Default('') String keyword,
    @Default([]) List<ContactRequest> contacts,
    File? avatar,
    Group? groupDetail,
  }) = _GroupDetailState;

  List<ContactRequest> getFilterContacts() {
    final List<ContactRequest> filterContacts;
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
