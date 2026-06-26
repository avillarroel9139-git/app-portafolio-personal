import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Color.fromARGB(255, 255, 34, 34);
  static const Color background = Color.fromARGB(255, 0, 0, 0);
  static const Color cardBg = Color.fromARGB(255, 0, 0, 0);
  static const Color accentGreen = Color.fromARGB(255, 167, 39, 39);

  static final ThemeData darkTheme = ThemeData.dark().copyWith(

    primaryColor: primary,
    scaffoldBackgroundColor: const Color.fromARGB(255, 26, 26, 26),
    

    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      elevation: 0,
      shadowColor: Colors.black54,
      titleTextStyle: TextStyle(
        color: primary,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: primary),
    ),


    cardTheme: CardThemeData(
      color: cardBg,
      elevation: 4,
      shadowColor: Color.fromARGB(255, 0, 0, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
      ),
    ),
  );
}