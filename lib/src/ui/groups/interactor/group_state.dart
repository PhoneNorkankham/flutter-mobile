part of 'group_bloc.dart';

@freezed
class GroupState with _$GroupState {
  const GroupState._();

  const factory GroupState({
    PageCommand? pageCommand,
  }) = _GroupState;
}
