part of 'new_chat_bloc.dart';

@freezed
class NewChatEvent with _$NewChatEvent {
  const factory NewChatEvent.initial() = _Initial;

  const factory NewChatEvent.clearPageCommand() = _ClearPageCommand;

  const factory NewChatEvent.onCategoryPressed(NewChatCategoryType type) = _OnCategoryPressed;
}
