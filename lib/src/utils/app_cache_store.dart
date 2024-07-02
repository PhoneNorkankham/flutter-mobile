import 'dart:io';

import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:path_provider/path_provider.dart';

class AppCacheStore {
  AppCacheStore._();

  static CacheStore? _cacheStore;

  static CacheStore get cacheStore => _cacheStore!;

  static Future<void> initialize() async {
    final Directory directory = await getTemporaryDirectory();
    _cacheStore = HiveCacheStore(directory.path);
  }
}
