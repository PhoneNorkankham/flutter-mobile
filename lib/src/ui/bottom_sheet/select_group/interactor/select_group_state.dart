part of 'select_group_bloc.dart';

@freezed
class SelectGroupState with _$SelectGroupState {
  const SelectGroupState._();

  const factory SelectGroupState({
    @Default(PageState.loading) PageState pageState,
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
    @Default('') String keyword,
    @Default([]) List<Group> groups,
  }) = _SelectGroupState;

  List<Group> get filterGroups {
    if (keyword.isEmpty) {
      return groups;
    } else {
      return groups
          .where((element) => element.name.toLowerCase().contains(keyword.toLowerCase()))
          .toList();
    }
  }
}
