import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:keepup/src/utils/app_cache_store.dart';
import 'package:keepup/src/utils/app_constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// HTTP Headers
const String KEY_ACCEPT = 'Accept';
const String KEY_CONTENT_TYPE = 'Content-Type';
const String KEY_X_RAPIDAPI_UA = 'x-rapidapi-ua';
const String KEY_X_RAPIDAPI_KEY = 'x-rapidapi-key';
const String KEY_X_RAPIDAPI_HOST = 'x-rapidapi-host';

class DioHttpClient extends DioForNative {
  DioHttpClient(
    String baseUrl, {
    BaseOptions? options,
  }) : super(options) {
    // Add Auth Header Interceptor
    interceptors.add(InterceptorsWrapper(onRequest: _requestInterceptor));

    // Adding caching to dio
    final cacheOptions = CacheOptions(
      store: AppCacheStore.cacheStore,
      policy: CachePolicy.request,
      hitCacheOnErrorExcept: [401, 403],
      maxStale: const Duration(days: 30),
      priority: CachePriority.high,
    );
    interceptors.add(DioCacheInterceptor(options: cacheOptions));

    if (kDebugMode) {
      // Adding Pretty Dio Logger
      interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ));
    }

    this.options.baseUrl = baseUrl;
  }

  void _requestInterceptor(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[KEY_ACCEPT] = 'application/json';
    options.headers[KEY_CONTENT_TYPE] = 'application/json';

    if (options.baseUrl.contains(AppConstants.rapidapiApi)) {
      options.headers[KEY_X_RAPIDAPI_UA] = AppConstants.rapidapiUA;
      options.headers[KEY_X_RAPIDAPI_KEY] = AppConstants.rapidapiKey;
      options.headers[KEY_X_RAPIDAPI_HOST] = AppConstants.rapidapiHost;
    }

    options.connectTimeout = const Duration(seconds: 30);
    options.receiveTimeout = const Duration(seconds: 30);
    handler.next(options);
  }
}
