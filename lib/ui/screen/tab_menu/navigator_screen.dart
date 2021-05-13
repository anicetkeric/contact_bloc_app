import 'package:contact_bloc_app/ui/screen/contacts/contacts_screen.dart';
import 'package:contact_bloc_app/ui/screen/contacts/favorites_screen.dart';
import 'package:contact_bloc_app/ui/screen/contacts/recent_screen.dart';
import 'package:flutter/material.dart';

class NavigatorScreen extends StatefulWidget {
  NavigatorScreen({this.navigatorKey, this.screenIndex});

  final int screenIndex;
  final GlobalKey navigatorKey;

  @override
  _NavigatorScreenState createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('index ${widget.screenIndex}');
    return Navigator(
      key: widget.navigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (widget.screenIndex) {
              case 0:
                return RecentScreen();
              case 1:
                return ContactScreen();
              case 2:
                return FavoriteScreen();
              default:
                return RecentScreen();
            }
          },
        );
      },
    );
  }
}
