import 'dart:io';

import 'package:intl/intl.dart';

extension NullableStringExtensions on String? {
  /// Returns [true] if this nullable string is either null or empty.
  bool get isNullOrEmpty {
    return this?.trim().isEmpty ?? true;
  }

  bool get isNotNullOrEmpty {
    return this?.trim().isNotEmpty ?? false;
  }
}

extension StringExtensions on String {
  bool get isNetworkUri => startsWith('http');

  String get convertDateTimeShort {
    String formattedDate = DateFormat('MM/dd - HH:mm').format(DateTime.parse(this));
    return formattedDate;
  }

  String get convertDateToTime {
    String formattedDate = DateFormat('HH:mm').format(DateTime.parse(this));
    return formattedDate;
  }

  String get convertDateDefault {
    DateFormat inputDateFormat = DateFormat('yyyy-MM-dd');
    DateTime dateTime = inputDateFormat.parse(this);
    DateFormat outputDateFormat = DateFormat('yy.MM.dd');
    return outputDateFormat.format(dateTime);
  }

  String get convertDateTimeLong {
    String formattedDate = DateFormat('yyyy/MM/dd HH:mm').format(DateTime.parse(this));
    return formattedDate;
  }

  String get toPhoneNumberFormat {
    // Convert 0123456789 to 012-3456-789
    if (length > 3) {
      String value = this;
      value = value.replaceAll(RegExp(r'\D'), '');
      value = value.replaceAll(RegExp(r'\B(?=(\d{4})+(?!\d))'), '-');
      return value;
    }
    return this;
  }

  String get toIdentifyNoFormat {
    if (length >= 6) {
      String result = substring(0, 6);
      if (length >= 7) {
        result += '-${substring(6, 7)}●●●●●●';
      }
      return result;
    }
    return this;
  }

  // Convert (012) 345-6789 to 0123456789
  String get onlyNumber => replaceAll(RegExp(r'\D'), '');

  // Convert abc to Abc
  String get firstCharUpperCase => isEmpty ? '' : substring(0, 1).toUpperCase() + substring(1);

  String get fileName => split(Platform.pathSeparator).lastOrNull ?? '';
}
