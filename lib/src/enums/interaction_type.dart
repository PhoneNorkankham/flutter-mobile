import 'package:flutter/material.dart';

enum InteractionMethodType {
  KeepUp,
  Message,
  Call,
  Contact;

  IconData get icon => switch (this) {
        KeepUp => Icons.recommend_outlined,
        Message => Icons.message_outlined,
        Call => Icons.call_outlined,
        Contact => Icons.account_circle_outlined,
      };
}
