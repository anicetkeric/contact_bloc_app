import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme = ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Color(0xff0073c7),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      errorColor: Colors.red[400],
      indicatorColor: Colors.green[300],
      accentColor: Colors.blueAccent,
      splashColor: Colors.blueAccent.withAlpha(40));
}