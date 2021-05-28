import 'package:flutter/material.dart';

class DialPadFloatingAction extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        heroTag:  null,
        onPressed: () {
          print("Add new contacts");
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
    );
  }
}
