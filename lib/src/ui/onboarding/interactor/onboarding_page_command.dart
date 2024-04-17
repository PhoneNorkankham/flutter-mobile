part of 'onboarding_bloc.dart';

@freezed
class SplashPageCommand extends PageCommand with _$SplashPageCommand {
  factory SplashPageCommand.showDialog(String message) = _ShowDialog;
}
