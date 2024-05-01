import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:keepup/src/core/model/logged_in_data.dart';
import 'package:keepup/src/utils/app_constants.dart';
import 'package:path_provider/path_provider.dart';

class AppShared {
  static const String _keyName = AppConstants.appDatabaseName;

  //  Key to open Box
  static const String _keyBox = '${_keyName}_shared';

  final String _keyLanguageCode = "${_keyName}_keyLanguageCode";
  final String _keyLoggedInData = "${_keyName}_keyLoggedInData";

  static AppShared? _instance;

  static Future<AppShared> get instance async =>
      _instance ?? await AppShared._openBox().then((value) => AppShared._(value));

  static Future<Box> _openBox() async {
    final Directory directory = await getApplicationDocumentsDirectory();
    Hive
      ..init(directory.path)
      ..registerAdapter(LoggedInDataAdapter());
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

  Future<void> setLoggedInData(LoggedInData data) => _box.put(_keyLoggedInData, data);

  /*
  * Get from hive
  */
  String get languageCode => _box.get(_keyLanguageCode, defaultValue: '');

  LoggedInData get loggedInData => _box.get(_keyLoggedInData, defaultValue: const LoggedInData());

  /*
  * Watch from hive
  */

  /*
  * Delete from hive
  */
  Future<void> _deleteLoggedInData() => _box.delete(_keyLoggedInData);

  Future<void> clearUserSession() async {
    await _deleteLoggedInData();
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
