import 'dart:math';

import 'package:contact_bloc_app/core/constants/route_constants.dart';
import 'package:contact_bloc_app/data/models/contact_model.dart';
import 'package:contact_bloc_app/views/widget/app_bar.dart';
import 'package:contact_bloc_app/views/widget/new_contacts_floating_action.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

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
        padding: EdgeInsets.only(top: 15),
        child: RefreshIndicator(
          child: GroupedListView<dynamic, String>(
            elements: contactDummyData,
            groupBy: (element) => element.name.substring(0, 1).toUpperCase(),
            groupComparator: (value1, value2) => value2.compareTo(value1),
            order: GroupedListOrder.DESC,
            useStickyGroupSeparators: true,
            groupSeparatorBuilder: (String value) => Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                value,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Theme.of(context).primaryColor),
              ),
            ),
            itemBuilder: (c, element) {
              return Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      child: Text(
                        element.name.substring(0, 1).toUpperCase(),
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                    ),
                    title: Row(
                      children: <Widget>[
                        Text(
                          element.name,
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  onTap: () => {
                  Navigator.pushReplacementNamed(context, RouteConstants.contact_add)
                   },
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
  Contact(id: 5, name: "Spatarcus", phone: "546673663", email: "Laurent@yahoo.fr", website: "website"),
  Contact(id: 6, name: "Anicet Eric", phone: "546673663", email: "Laurent@yahoo.fr", website: "website")
] ;
