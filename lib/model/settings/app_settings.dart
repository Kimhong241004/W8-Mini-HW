import 'dart:ui';

import 'package:flutter/material.dart';

enum ThemeColor {
  blue(color: Color.fromARGB(255, 34, 118, 229)),
  green(color: Color.fromARGB(255, 229, 158, 221)),
  pink(color: Color.fromARGB(255, 156, 202, 8));

  const ThemeColor({required this.color});

  final Color color;
  Color get backgroundColor => Color.lerp(color, Colors.white, 0.85)!;
}

class AppSettings {
  final ThemeColor themeColor;

  AppSettings({required this.themeColor});


  AppSettings copyWith({ThemeColor? themeColor}) {
    return AppSettings(themeColor: themeColor ?? this.themeColor);
  }
  
}
