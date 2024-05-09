part of 'group_bloc.dart';

@freezed
class GroupState with _$GroupState {
  const GroupState._();

  const factory GroupState({
    PageCommand? pageCommand,
    @Default(PageState.loading) PageState pageState,
    @Default(false) bool isLoading,
    @Default('') String keyword,
    @Default([]) List<Group> groups,
  }) = _GroupState;

  List<Group> getFilterGroups() {
    final List<Group> filterGroups;
    if (keyword.isEmpty) {
      filterGroups = [...groups];
    } else {
      filterGroups = [
        ...groups
            .where((element) => element.name.toLowerCase().contains(keyword.toLowerCase()))
            .toList()
      ];
    }
    return filterGroups;
  }
}
