import 'dart:io';

import 'package:keepup/src/extensions/string_extensions.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AppAsyncAction {
  static AppAsyncAction? _instance;

  static AppAsyncAction get instance => _instance ??= AppAsyncAction._();

  bool _launchCalled = false;

  AppAsyncAction._() {
    _launchCalled = false;
  }

  Future<void> callPhoneNumber(String phoneNumber) =>
      launchUrl("tel:${phoneNumber.replaceAll(' ', '')}");

  Future<void> sendSMS(String phoneNumber, {String message = ''}) {
    phoneNumber = phoneNumber.replaceAll(' ', '');
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

  Future<bool> isSupportedWhatsApp() {
    const whatsappUrl = 'whatsapp://send?text=Hello'; // URL WhatsApp to send message
    return canLaunchUrl(Uri.encodeFull(whatsappUrl));
  }

  Future<void> openWhatsapp(String phoneNumber) {
    phoneNumber = '${phoneNumber.startsWith('+') ? '+' : ''}${phoneNumber.onlyNumber}';
    final whatsappUrl = "whatsapp://send?phone=$phoneNumber";
    return launchUrl(Uri.encodeFull(whatsappUrl));
  }

  Future<bool> canLaunchUrl(String url) {
    if (url.isEmpty || _launchCalled) return Future.value(false);
    _launchCalled = true;
    return canLaunchUrlString(url).whenComplete(() async {
      await Future.delayed(const Duration(seconds: 1));
      _launchCalled = false;
    });
  }
}
