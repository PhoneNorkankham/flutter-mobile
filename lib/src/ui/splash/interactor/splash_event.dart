part of 'splash_bloc.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.initial() = _Initial;

  const factory SplashEvent.clearPageCommand() = _ClearPageCommand;
}