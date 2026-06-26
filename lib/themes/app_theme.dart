import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 255, 158, 158);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 252, 158, 158),
      elevation: 0,
    ),
  );
}
