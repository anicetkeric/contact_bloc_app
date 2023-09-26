import 'package:contact_bloc_app/core/constants/route_constants.dart';
import 'package:contact_bloc_app/core/exceptions/route_exception.dart';
import 'package:contact_bloc_app/views/screen/contacts/contact_add_screen.dart';
import 'package:contact_bloc_app/views/screen/contacts/contact_detail_screen.dart';
import 'package:contact_bloc_app/views/screen/splash_screen.dart';
import 'package:contact_bloc_app/views/screen/tab_menu/navigation_menu.dart';
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
      case RouteConstants.contact_add:
        return MaterialPageRoute(
          builder: (_) => ContactAddScreen(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
