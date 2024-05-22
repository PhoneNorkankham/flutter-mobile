part of 'interaction_bloc.dart';

@freezed
class InteractionEvent with _$InteractionEvent {
  const factory InteractionEvent.initial(Contact contact) = _Initial;

  const factory InteractionEvent.clearPageCommand() = _ClearPageCommand;

  const factory InteractionEvent.onInteraction(InteractionMethodType type) = _OnInteraction;
}
