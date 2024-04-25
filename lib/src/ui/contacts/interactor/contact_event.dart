part of 'contact_bloc.dart';

@freezed
class ContactEvent with _$ContactEvent {
  const factory ContactEvent.initial() = _Initial;

  const factory ContactEvent.clearPageCommand() = _ClearPageCommand;
}
