import 'package:flutter/material.dart';

enum InteractionMethodType {
  Message,
  Call,
  Contact,
  KeepUp;

  IconData get icon => switch (this) {
        Message => Icons.message,
        Call => Icons.call,
        Contact => Icons.account_circle,
        KeepUp => Icons.check_circle,
      };
}
