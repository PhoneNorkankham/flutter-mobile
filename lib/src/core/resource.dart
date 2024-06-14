import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';

enum ResourceType {
  REQUEST_NULL_DATA,
  REQUEST_DISCONNECT,
  REQUEST_OK,
  REQUEST_ERROR,
  REQUEST_ERROR_TOKEN,
}

class Resource<DataType> {
  ResourceType? type;
  String? message;
  DataType? data;

  Resource.fromData(this.data) {
    type = ResourceType.REQUEST_OK;
  }

  Map<String, dynamic> toJson() => {
        'message': message,
        'type': type,
        'data': data,
      };

  Resource({this.type, this.message, this.data});

  Resource.withDisconnect() {
    message = LocaleKey.alertDisconnect.tr;
    type = ResourceType.REQUEST_DISCONNECT;
    data = null;
  }

  Resource.withNoData() {
    message = LocaleKey.alertNullData.tr;
    type = ResourceType.REQUEST_NULL_DATA;
    data = null;
  }

  Resource.withHasData(this.data) {
    message = LocaleKey.alertGetDataSuccess.tr;
    type = ResourceType.REQUEST_OK;
  }

  bool get isSuccess => type == ResourceType.REQUEST_OK;

  bool get isErrorToken => type == ResourceType.REQUEST_ERROR_TOKEN;

  bool get isError => type != ResourceType.REQUEST_OK;

  PageError<NetworkError> toPageError([String defaultMessage = '']) {
    return PageError(
      isErrorToken ? NetworkError.token : NetworkError.other,
      message ?? defaultMessage,
    );
  }
}
