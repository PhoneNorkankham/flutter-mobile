import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:keepup/src/core/model/logged_in_data.dart';
import 'package:keepup/src/core/model/user_data.dart';
import 'package:keepup/src/enums/layout_type.dart';
import 'package:keepup/src/utils/app_constants.dart';
import 'package:path_provider/path_provider.dart';

class AppShared {
  static const String _keyName = AppConstants.appDatabaseName;

  //  Key to open Box
  static const String _keyBox = '${_keyName}_shared';

  final String _keyLanguageCode = "${_keyName}_keyLanguageCode";
  final String _keyLoggedInData = "${_keyName}_keyLoggedInData";
  final String _keyLayoutType = "${_keyName}_keyLayoutType";

  static AppShared? _instance;

  static Future<AppShared> get instance async =>
      _instance ?? await AppShared._openBox().then((value) => AppShared._(value));

  static Future<Box> _openBox() async {
    final Directory directory = await getApplicationDocumentsDirectory();
    Hive
      ..init(directory.path)
      ..registerAdapter(LoggedInDataAdapter())
      ..registerAdapter(UserDataAdapter())
      ..registerAdapter(LayoutTypeAdapter());
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

  Future<void> setLayoutType(LayoutType type) => _box.put(_keyLayoutType, type);

  /*
  * Get from hive
  */
  String get languageCode => _box.get(_keyLanguageCode, defaultValue: '');

  LoggedInData get loggedInData => _box.get(_keyLoggedInData, defaultValue: const LoggedInData());

  LayoutType get layoutType => _box.get(_keyLayoutType, defaultValue: LayoutType.list);

  /*
  * Watch from hive
  */
  Stream<LoggedInData> get watchLoggedInData =>
      _box.watchWithInitial(_keyLoggedInData).map((event) {
        final value = event.value;
        return value is LoggedInData ? value : const LoggedInData();
      });

  Stream<LayoutType> get watchLayoutType => _box.watchWithInitial(_keyLayoutType).map((event) {
        final value = event.value;
        return value is LayoutType ? value : LayoutType.list;
      });

  /*
  * Delete from hive
  */
  Future<void> _deleteLoggedInData() => _box.delete(_keyLoggedInData);

  Future<void> _deleteLayoutType() => _box.delete(_keyLayoutType);

  Future<void> clearUserSession() async {
    await _deleteLoggedInData();
    await _deleteLayoutType();
  }

  /*
  * Clear all data from hive
  */
  Future<void> clear() => _box.clear();
}

extension BoxExtensions on Box {
  Stream<BoxEvent> watchWithInitial(String key) {
    Future.delayed(const Duration(milliseconds: 10), () {
      var obj = get(key);
      put(key, obj);
    });
    return watch(key: key);
  }
}
