import 'package:flutter/material.dart';
import 'package:m3_app/core/theme/m3_theme.dart';
import 'package:m3_app/core/theme/m3_theme_config.dart';

/// context なしで SnackBar を出すために MaterialApp に渡すキー
final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

// ignore: avoid_classes_with_only_static_members
class MessageWidget {
  static void show(String msg) {
    scaffoldMessengerKey.currentState
      ?..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            msg,
            style: TextStyle(
              color: Colors.black,
              fontSize: M3ThemeConfig.fontSize.normal,
            ),
          ),
          backgroundColor: m3ColorScheme.primaryContainer,
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 2),
        ),
      );
  }
}
