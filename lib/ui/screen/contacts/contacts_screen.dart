import 'dart:math';

import 'package:contact_bloc_app/data/models/contact_model.dart';
import 'package:contact_bloc_app/ui/widget/app_bar.dart';
import 'package:contact_bloc_app/ui/widget/new_contacts_floating_action.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      floatingActionButton: NewContactFloatingAction(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        child: RefreshIndicator(
          child: ListView.builder(
            itemCount: contactDummyData.length,
            itemBuilder: (context, index) {
              Contact _model = contactDummyData[index];
              return Column(
                children: <Widget>[
                /*  Divider(
                    height: 12.0,
                  ),*/
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      child: Text(
                        _model.name.substring(0, 1).toUpperCase(),
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                    ),
                    title: Row(
                      children: <Widget>[
                        Text(_model.name),
                      ],
                    ),
                    subtitle: Text(_model.phone),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14.0,
                    ),
                  ),
                ],
              );
            },
          ),
          onRefresh: _pullRefresh,
        ),
      ),
    );
  }

  Future<void> _pullRefresh() async {
    setState(() {
      print('test on refresh');
    });
  }
}
List<Contact> contactDummyData = [
  Contact(id: 1, name: "Laurent", phone: "097846578", email: "Laurent@yahoo.fr", website: "website"),
  Contact(id: 2, name: "Avenu demau", phone: "096757", email: "Laurent@yahoo.fr", website: "website"),
  Contact(id: 3, name: "Tearima", phone: "087656747", email: "Laurent@yahoo.fr", website: "website"),
  Contact(id: 4, name: "Sirux", phone: "4587989", email: "Laurent@yahoo.fr", website: "website"),
  Contact(id: 5, name: "Spatarcus", phone: "546673663", email: "Laurent@yahoo.fr", website: "website")
] ;
