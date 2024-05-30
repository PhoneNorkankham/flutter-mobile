import 'package:keepup/src/ui/base/interactor/page_command.dart';

enum NetworkError { token, other, needSignUp, forbidden }

enum GenericError { generic }

class PageError<T> {
  final T pageErrorType;
  final String message;

  PageError(this.pageErrorType, this.message);

  PageCommand toPageCommand() {
    return pageErrorType == NetworkError.token
        ? PageCommandDialog.showExpirationSession()
        : PageCommandMessage.showError(message);
  }
}
