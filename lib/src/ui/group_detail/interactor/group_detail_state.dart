part of 'group_detail_bloc.dart';

@freezed
class GroupDetailState with _$GroupDetailState {
  const GroupDetailState._();

  const factory GroupDetailState({
    PageCommand? pageCommand,
    @Default(GroupType.newGroup) GroupType groupType,
  }) = _GroupDetailState;
}
