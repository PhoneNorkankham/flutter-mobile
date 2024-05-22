import 'dart:io';

import 'package:url_launcher/url_launcher_string.dart';

class AppAsyncAction {
  static AppAsyncAction? _instance;

  static AppAsyncAction get instance => _instance ??= AppAsyncAction._();

  bool _launchCalled = false;

  AppAsyncAction._() {
    _launchCalled = false;
  }

  Future<void> callPhoneNumber(String phoneNumber) => launchUrl("tel:$phoneNumber");

  Future<void> sendSMS({required String phoneNumber, String message = ''}) {
    final String separator = Platform.isIOS ? '&' : '?';
    final String url = "sms:$phoneNumber${message.isEmpty ? '' : '${separator}body=$message'}";
    return launchUrl(Uri.encodeFull(url));
  }

  Future<void> launchUrl(String url, {LaunchMode mode = LaunchMode.externalApplication}) {
    if (url.isEmpty || _launchCalled) return Future.value();
    _launchCalled = true;
    return launchUrlString(url, mode: mode).whenComplete(() async {
      await Future.delayed(const Duration(seconds: 1));
      _launchCalled = false;
    });
  }
}
