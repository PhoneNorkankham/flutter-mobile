part of 'select_group_bloc.dart';

@freezed
class SelectGroupEvent with _$SelectGroupEvent {
  const factory SelectGroupEvent.initial() = _Initial;

  const factory SelectGroupEvent.clearPageCommand() = _ClearPageCommand;

  const factory SelectGroupEvent.onChangedKeyword(String keyword) = _OnChangedKeyword;
}
