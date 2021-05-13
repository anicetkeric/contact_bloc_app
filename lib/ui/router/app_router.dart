import 'package:contact_bloc_app/core/constants/route_constants.dart';
import 'package:contact_bloc_app/core/exceptions/route_exception.dart';
import 'package:contact_bloc_app/ui/screen/contacts/contact_detail_screen.dart';
import 'package:contact_bloc_app/ui/screen/splash_screen.dart';
import 'package:contact_bloc_app/ui/screen/tab_menu/navigation_menu.dart';
import 'package:flutter/material.dart';

class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.splash:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case RouteConstants.navigation:
        return MaterialPageRoute(
          builder: (_) => NavigationMenu(),
        );
      case RouteConstants.contacts_details:
        return MaterialPageRoute(
          builder: (_) => ContactDetailScreen(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
