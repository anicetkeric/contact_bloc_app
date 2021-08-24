import 'package:contact_bloc_app/core/constants/route_constants.dart';
import 'package:contact_bloc_app/ui/screen/contacts/contact_add_screen.dart';
import 'package:flutter/material.dart';

class NewContactFloatingAction extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        heroTag:  null,
        onPressed: () {
       /*   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return ContactAddScreen();
              }));
*/

          Navigator.of(context, rootNavigator: false).push(MaterialPageRoute(builder: (context) {
            return ContactAddScreen();
          }));

        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
    );
  }
}
