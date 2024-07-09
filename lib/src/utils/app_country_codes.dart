import 'package:flutter/material.dart';
import 'package:keepup/src/core/remote/dio_http_client.dart';
import 'package:phonecodes/phonecodes.dart';

class AppCountryCodes {
  static Country? _country;

  static Country? get country => _country;

  static Future<void> initialize() async {
    return DioHttpClient('http://ip-api.com/json').get('/').then((result) {
      final data = result.data;
      if (data is Map<String, dynamic>) {
        if (data.containsKey('countryCode')) {
          final String countryCode = data['countryCode'];
          if (countryCode.isNotEmpty) {
            _country = Countries.findByCode(countryCode);
          }
        }
      }
    }).catchError((e) {
      debugPrint('AppCountryCodes.initialize() error: ${e.toString()}');
    });
  }
}
