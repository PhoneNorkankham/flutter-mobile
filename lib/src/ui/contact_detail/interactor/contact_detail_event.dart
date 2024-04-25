part of 'contact_detail_bloc.dart';

@freezed
class ContactDetailEvent with _$ContactDetailEvent {
  const factory ContactDetailEvent.initial() = _Initial;

  const factory ContactDetailEvent.clearPageCommand() = _ClearPageCommand;
}
