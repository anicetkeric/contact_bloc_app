import 'package:contact_bloc_app/ui/widget/app_bar.dart';
import 'package:contact_bloc_app/ui/widget/dialpad_floating_action.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: Appbar(),
        floatingActionButton: DialPadFloatingAction(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Center(
          child: Text('recent'),
        )
    );
  }
}
