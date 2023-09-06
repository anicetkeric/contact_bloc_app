import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme = ThemeData(
      primaryColor: Color(0xff0073c7),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      indicatorColor: Colors.green[300],
      hintColor: Colors.blueAccent,
      splashColor: Colors.blueAccent.withAlpha(40),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(error: Colors.red[400]));
}