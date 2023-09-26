import 'package:flutter/material.dart';

import 'navigator_screen.dart';


class NavigationMenu extends StatefulWidget {
  @override
  _NavigationMenuState createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _pageIndex = 0;

  Map<int, GlobalKey> navigatorKeys = {
    0: GlobalKey(),
    1: GlobalKey(),
    2: GlobalKey()
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WillPopScope(
          onWillPop: () async {
            return !await Navigator.maybePop(
                navigatorKeys[_pageIndex]!.currentState!.context);
          },
          child: IndexedStack(
            index: _pageIndex,
            children: <Widget>[
              NavigatorScreen(
                navigatorKey: navigatorKeys[0]!,
                screenIndex: _pageIndex,
              ),
              NavigatorScreen(
                navigatorKey: navigatorKeys[1]!,
                screenIndex: _pageIndex,
              ),
              NavigatorScreen(
                navigatorKey: navigatorKeys[2]!,
                screenIndex: _pageIndex,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Recent',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'My Favorites',
          ),
        ],
        currentIndex: _pageIndex,
        onTap: (int index) {
          setState(
                () {
              _pageIndex = index;
            },
          );
        },
      ),
    );
  }
}
