import 'dart:math';

import 'package:contact_bloc_app/core/shared/utility.dart';
import 'package:contact_bloc_app/data/json/dummy_json.dart';
import 'package:contact_bloc_app/data/models/CallType.dart';
import 'package:contact_bloc_app/ui/widget/app_bar.dart';
import 'package:contact_bloc_app/ui/widget/new_contacts_floating_action.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class RecentScreen extends StatefulWidget {
  @override
  _RecentScreenState createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: Appbar(),
        floatingActionButton: NewContactFloatingAction(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: GroupedListView<dynamic, String>(
        elements: recentDummyData,
        groupBy: (element) => _groupingListTitle(element.dateStart).toUpperCase(),
        groupComparator: (value1, value2) => value2.compareTo(value1),
        order: GroupedListOrder.DESC,
        useStickyGroupSeparators: false,
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            value.split(" ")[1],
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        itemBuilder: (c, element) {
          return Column(
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                  child: element.phoneNumber != null ? Icon(Icons.person_outline, color: Colors.white70,) : Text(
                     element.contact.name.substring(0, 1).toUpperCase() ,
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                ),
                title: Row(
                  children: <Widget>[
                    Text(element.phoneNumber != null ? element.phoneNumber : element.contact.name,
                    style: TextStyle(color: element.type == CallType.MISSED ?  Colors.red : Colors.black,
                    fontSize: 14.0
                    ),
                    ),
                  ],
                ),
                subtitle: Wrap(
                  spacing: 7.0, // space between two icons
                  children: <Widget>[
                    Icon(
                      element.type == CallType.OUTBOUND ?  Icons.north_east :
                      element.type == CallType.INBOUND ?  Icons.south_west :
                      Icons.south_east,
                      size: 10.0,
                      color:
                      element.type == CallType.OUTBOUND ? Colors.green:
                      element.type == CallType.INBOUND ?  Colors.blue:
                      Colors.red,
                    ),
                    Text(element.location != null ? element.location : "Cell Phone", style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13.0,
                        color:  Colors.grey)),
                  ],
                ),
                trailing: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Text(Utility.getPassedTime(element.dateStart.toString()), style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 11.0,
                        color:  Colors.grey)),
                    Icon(
                      Icons.info_outline,
                      size: 16.0,
                      color: Theme.of(context).primaryColor,
                    ), // icon-2
                  ],
                ),
              ),
            ],
          );
        },
      )
    );
  }
}
  String _groupingListTitle(DateTime datetime){
    var diff = DateTime.now().difference(datetime);
    if (diff.inDays < 1) {
      return "A Today";
    } else if (diff.inDays <= 2) {
      return "B Yesterday";
    } else {
      return "C PREV.";
    }
  }
