enum NetworkError { token, other, needSignUp, forbidden }

enum GenericError { generic }

class PageError<T> {
  final T pageErrorType;
  final String message;

  PageError(this.pageErrorType, this.message);
}
