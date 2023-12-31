import 'package:flutter/material.dart';

class AppTheme {
  ThemeData light() {
    return ThemeData(
      useMaterial3: true,
    );
  }

  ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        brightness: Brightness.dark,
        primary: Colors.deepPurple,
        onPrimary: Colors.white,
        secondary: Colors.deepPurpleAccent,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(10),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          shadowColor: MaterialStateProperty.all(Colors.purpleAccent),
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(10),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
    );
  }
}

// Circular border radius
final BorderRadius borderRadius = BorderRadius.circular(8.0);
