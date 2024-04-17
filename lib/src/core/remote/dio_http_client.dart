import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/model/token_value.dart';
import 'package:keepup/src/utils/app_shared.dart';

// HTTP Headers
const String KEY_ACCEPT = 'Accept';
const String KEY_AUTH = 'Authorization';

class DioHttpClient extends DioForNative {
  DioHttpClient(
    String baseUrl, {
    BaseOptions? options,
  }) : super(options) {
    // Add Auth Header Interceptor
    interceptors.add(InterceptorsWrapper(onRequest: _requestInterceptor));

    // Adding caching to dio
    final cacheOptions = CacheOptions(
      // A default store is required for interceptor.
      store: MemCacheStore(),
      // Default.
      policy: CachePolicy.request,
      // Optional. Returns a cached response on error but for statuses 401 & 403.
      hitCacheOnErrorExcept: [401, 403],
      // Optional. Overrides any HTTP directive to delete entry past this duration.
      maxStale: const Duration(days: 7),
      // Default. Allows 3 cache sets and ease cleanup.
      priority: CachePriority.normal,
      // Default. Body and headers encryption with your own algorithm.
      cipher: null,
      // Default. Key builder to retrieve requests.
      keyBuilder: CacheOptions.defaultCacheKeyBuilder,
      // Default. Allows to cache POST requests.
      // Overriding [keyBuilder] is strongly recommended.
      allowPostMethod: false,
    );
    interceptors.add(DioCacheInterceptor(options: cacheOptions));
    this.options.baseUrl = baseUrl;
  }

  void _requestInterceptor(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.headers.containsKey(KEY_AUTH)) {
      options.headers.remove(KEY_AUTH);
    }
    TokenValue tokenValue = Get.find<AppShared>().tokenValue;
    if (tokenValue.token.isNotEmpty) {
      options.headers[KEY_AUTH] = 'Bearer ${tokenValue.token}';
    }
    options.headers[KEY_ACCEPT] = 'application/json';
    options.connectTimeout = const Duration(seconds: 30);
    options.receiveTimeout = const Duration(seconds: 30);
    handler.next(options);
  }
}
