import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/enums/group_type.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';

part 'group_detail_bloc.freezed.dart';
part 'group_detail_event.dart';
part 'group_detail_state.dart';

class GroupDetailBloc extends Bloc<GroupDetailEvent, GroupDetailState> {
  GroupDetailBloc() : super(const GroupDetailState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<GroupDetailState> emit) async {
    final GroupType groupType = Get.arguments is GroupType ? Get.arguments : GroupType.newGroup;
    emit(state.copyWith(groupType: groupType));
  }
}
