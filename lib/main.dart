import 'package:contact_bloc_app/core/constants/route_constants.dart';
import 'package:contact_bloc_app/core/constants/strings.dart';
import 'package:contact_bloc_app/core/themes/app_theme.dart';
import 'package:contact_bloc_app/views/router/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: Strings.appTitle,
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: RouteConstants.splash,
        onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}