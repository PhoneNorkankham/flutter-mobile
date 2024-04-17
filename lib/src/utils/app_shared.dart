import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:keepup/src/core/model/token_value.dart';
import 'package:keepup/src/utils/app_constants.dart';

class AppShared {
  static const String _keyName = AppConstants.appDatabaseName;

  //  Key to open Box
  static const String _keyBox = '${_keyName}_shared';

  final String _keyTokenValue = "${_keyName}_keyTokenValue";
  final String _keyLanguageCode = "${_keyName}_keyLanguageCode";

  static AppShared? _instance;

  static Future<AppShared> get instance async =>
      _instance ?? await AppShared._openBox().then((value) => AppShared._(value));

  static Future<Box> _openBox() async {
    final Directory directory = await getApplicationDocumentsDirectory();
    Hive
      ..init(directory.path)
      ..registerAdapter(TokenValueAdapter());
    return Hive.openBox(AppShared._keyBox);
  }

  final Box<dynamic> _box;

  AppShared._(this._box) {
    _instance = this;
    debugPrint('AppShared created!');
  }

  /*
  * Add to hive
  */
  Future<void> setLanguageCode(String languageCode) => _box.put(_keyLanguageCode, languageCode);

  Future<void> setTokenValue(TokenValue tokenValue) => _box.put(_keyTokenValue, tokenValue);

  /*
  * Get from hive
  */
  TokenValue get tokenValue => _box.get(_keyTokenValue, defaultValue: TokenValue());

  String get languageCode => _box.get(_keyLanguageCode, defaultValue: '');

  /*
  * Watch from hive
  */
  Stream<TokenValue> watchTokenValue() => _box.watch(key: _keyTokenValue).map((event) {
        final value = event.value;
        return value is TokenValue ? value : TokenValue();
      });

  /*
  * Delete from hive
  */
  Future<void> _deleteToken() => _box.delete(_keyTokenValue);

  Future<void> clearUserSession() async {
    await _deleteToken();
  }

  /*
  * Clear all data from hive
  */
  Future<void> clear() => _box.clear();
}

extension BoxExtensions on Box {
  Stream<BoxEvent> watchWithInitial({required String key}) {
    Future.delayed(const Duration(milliseconds: 10), () {
      var obj = get(key);
      put(key, obj);
    });
    return watch(key: key);
  }
}
