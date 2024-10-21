// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';

class FontSize {
  double get small => 10;
  double get normal => 14;
  double get large => 20;
}

class M3CustomColor {
  Color get favorite => const Color.fromARGB(255, 245, 70, 143);
}

class M3ThemeConfig {
  static FontSize get fontSize => FontSize();
  static M3CustomColor get customColor => M3CustomColor();
}
