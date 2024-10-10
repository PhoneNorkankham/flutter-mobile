part of 'interaction_bloc.dart';

@freezed
class InteractionEvent with _$InteractionEvent {
  const factory InteractionEvent.initial(Contact contact) = _Initial;

  const factory InteractionEvent.clearPageCommand() = _ClearPageCommand;

  const factory InteractionEvent.onInteraction(InteractionMethodType type) = _OnInteraction;

  const factory InteractionEvent.onDeleteContact(Contact contact) = _OnDeleteContact;

  const factory InteractionEvent.onChangedAvatar(File file) = _OnChangedAvatar;

  const factory InteractionEvent.onChangedAvatarFromUrl(
    BingSearchImageData data,
  ) = _OnChangedAvatarFromUrl;
}
