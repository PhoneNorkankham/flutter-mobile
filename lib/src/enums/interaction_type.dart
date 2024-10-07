import 'package:flutter/material.dart';

enum InteractionMethodType {
  Message,
  Call,
  Contact,
  KeepUp;

  IconData get icon => switch (this) {
        Message => Icons.message_outlined,
        Call => Icons.call_outlined,
        Contact => Icons.account_circle_outlined,
        KeepUp => Icons.recommend_outlined,
      };
}
