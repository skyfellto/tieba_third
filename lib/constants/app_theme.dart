import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightPrimary = Color.fromARGB(255, 159, 181, 221);
  static const Color darkPrimary = Color(0xFF3A3E5C);
  static const Color darkCard = Color(0xFF2C2E42);
  static const Color darkScaffold = Color(0xFF1A1C2E);

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: Colors.white,
    cardColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: lightPrimary,
      foregroundColor: Colors.black87,
      elevation: 0,
    ),
    cardTheme: const CardThemeData(
      color: Colors.white,
      surfaceTintColor: Colors.transparent,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black87),
      bodyMedium: TextStyle(color: Colors.black87),
      titleMedium: TextStyle(color: Colors.black87),
    ),
    iconTheme: const IconThemeData(color: Colors.grey),
    dividerTheme: const DividerThemeData(color: Color(0xFFE0E0E0)),
  );

  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: darkScaffold,
    cardColor: darkCard,
    appBarTheme: const AppBarTheme(
      backgroundColor: darkPrimary,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    cardTheme: const CardThemeData(
      color: darkCard,
      surfaceTintColor: Colors.transparent,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
    ),
    iconTheme: const IconThemeData(color: Colors.white60),
    dividerTheme: const DividerThemeData(color: Color(0xFF3E4058)),
  );
}
