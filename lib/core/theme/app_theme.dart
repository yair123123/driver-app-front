import 'package:flutter/material.dart';

class AppTheme {
  // --- צבעים גלובליים ---
  static const Color _primaryColor   = Color(0xFF0288D1); // כחול-טורקיז
  static const Color _accentColor    = Color(0xFFFFC107); // צהוב-זהב
  static const Color _errorColor     = Color(0xFFD32F2F);
  static const Color _surfaceLight   = Color(0xFFF7F9FA);
  static const Color _surfaceDark    = Color(0xFF181D25);

  // --- צבעים לנסיעה פעילה ---
  static const Color _activePrimary  = Color(0xFF00BFA5); // ירוק-טורקיז חי
  static const Color _activeSurface  = Color(0xFFE8F8F5); // רקע בהיר תואם
  static const Color _activeOnPrimary = Colors.white;     // טקסט/אייקונים על primary

  // --- ThemeData ללייט ---
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryColor,
      brightness: Brightness.light,
      surface: _surfaceLight,
      secondary: _accentColor,
      error: _errorColor,
    ),
    useMaterial3: true,
  );

  // --- ThemeData ל-dark ---
  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryColor,
      brightness: Brightness.dark,
      surface: _surfaceDark,
      secondary: _accentColor,
      error: _errorColor,
    ),
    useMaterial3: true,
  );

  // --- ThemeData לנסיעה פעילה ---
  static final ThemeData activeRideTheme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: _activePrimary,
      onPrimary: _activeOnPrimary,
      secondary: _accentColor,
      onSecondary: Colors.black,
      surface: _activeSurface,
      onSurface: Colors.black,
      error: _errorColor,
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: _activeSurface,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _activePrimary,
      foregroundColor: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: _activePrimary,
      foregroundColor: Colors.white,
    ),
    useMaterial3: true,
  );
}
