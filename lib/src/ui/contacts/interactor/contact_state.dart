part of 'contact_bloc.dart';

@freezed
class ContactState with _$ContactState {
  const ContactState._();

  const factory ContactState({
    PageCommand? pageCommand,
  }) = _ContactState;
}
