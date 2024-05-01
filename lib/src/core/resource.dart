import 'dart:io';

import 'package:dio/dio.dart' as dio;
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';

enum ResourceType {
  REQUEST_NULL_DATA,
  REQUEST_DISCONNECT,
  REQUEST_CONNECT_TIMEOUT,
  REQUEST_SEND_TIMEOUT,
  REQUEST_RECEIVE_TIMEOUT,
  REQUEST_RESPONSE,
  REQUEST_CANCEL,
  REQUEST_OK,
  REQUEST_ERROR,
  REQUEST_ERROR_SERVER,
  REQUEST_ERROR_TOKEN,
  REQUEST_ERROR_FORBIDDEN,
  REQUEST_CONNECT_ERROR,
  REQUEST_BAD_CERTIFICATE,
  NEED_SIGN_UP,
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

  Resource.withError(DioException error, {this.data}) {
    String message = '';
    ResourceType type;
    switch (error.type) {
      case DioExceptionType.connectionError:
        type = ResourceType.REQUEST_CONNECT_ERROR;
        message = LocaleKey.alertErrorServer.tr;
        break;
      case DioExceptionType.connectionTimeout:
        type = ResourceType.REQUEST_CONNECT_TIMEOUT;
        message = LocaleKey.alertConnectTimeout.tr;
        break;
      case DioExceptionType.sendTimeout:
        type = ResourceType.REQUEST_SEND_TIMEOUT;
        message = LocaleKey.alertSendTimeout.tr;
        break;
      case DioExceptionType.receiveTimeout:
        type = ResourceType.REQUEST_RECEIVE_TIMEOUT;
        message = LocaleKey.alertReceiveTimeout.tr;
        break;
      case DioExceptionType.badResponse:
        dio.Response? response = error.response;
        if (response == null) {
          type = ResourceType.REQUEST_ERROR;
          break;
        }
        final result = response.data;
        if (result != null) {
          if (result is String) {
            message = result;
          } else if (result is Map<String, dynamic>) {
            message = result.containsKey('message') ? result['message'] : '';
          }
        }
        if (response.statusCode == 200) {
          type = ResourceType.REQUEST_RESPONSE;
        } else if (response.statusCode == 401) {
          type = ResourceType.REQUEST_ERROR_TOKEN;
        } else if (response.statusCode == 403) {
          type = ResourceType.REQUEST_ERROR_FORBIDDEN;
        } else if (response.statusCode == 409) {
          type = ResourceType.NEED_SIGN_UP;
        } else {
          type = ResourceType.REQUEST_ERROR;
        }
        break;
      case DioExceptionType.cancel:
        type = ResourceType.REQUEST_CANCEL;
        break;
      case DioExceptionType.badCertificate:
        type = ResourceType.REQUEST_BAD_CERTIFICATE;
        break;
      case DioExceptionType.unknown:
        type = ResourceType.REQUEST_ERROR_SERVER;
        final socketError = error.error;
        if (socketError is SocketException) {
          message = socketError.message;
        } else {
          message = error.message ?? '';
        }
        if (message.contains("No address associated") || message.contains("Failed host lookup")) {
          message = LocaleKey.alertDisconnect.tr;
        } else if (message.contains("Connection refused")) {
          message = LocaleKey.alertErrorServer.tr;
        }
        break;
    }

    this.message = message.isNotEmpty ? message : null;
    this.type = type;
  }

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

  bool get isErrorForbidden => type == ResourceType.REQUEST_ERROR_FORBIDDEN;

  bool get isError => type != ResourceType.REQUEST_OK;

  PageError<NetworkError> toPageError([String defaultMessage = '']) {
    return PageError(
      isErrorToken ? NetworkError.token : NetworkError.other,
      message ?? defaultMessage,
    );
  }
}
