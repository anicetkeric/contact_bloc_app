import 'dart:math';

import 'package:contact_bloc_app/data/json/dummy_json.dart';
import 'package:contact_bloc_app/data/models/contact_model.dart';
import 'package:contact_bloc_app/ui/widget/app_bar.dart';
import 'package:contact_bloc_app/ui/widget/dialpad_floating_action.dart';
import 'package:flutter/material.dart';

class RecentScreen extends StatefulWidget {
  @override
  _RecentScreenState createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: Appbar(),
        floatingActionButton: DialPadFloatingAction(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        child: ListView.builder(
            itemCount: contactDummyData.length,
            itemBuilder: (context, index) {
              Contact _model = contactDummyData[index];
              return Column(
                children: <Widget>[
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
                    subtitle: Wrap(
                      spacing: 7.0, // space between two icons
                      children: <Widget>[
                        Icon(
                          Icons.north_east,
                          size: 10.0,
                          color: Theme.of(context).primaryColor,
                          ),
                        Text(_model.phone, style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 13.0,
                            color:  Colors.grey)),
                      ],
                    ),
                    trailing: Wrap(
                      spacing: 12, // space between two icons
                      children: <Widget>[
                        Text(_model.phone, style: TextStyle(
                          fontWeight: FontWeight.normal,
                            fontSize: 13.0,
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
          ),
        ),
    );
  }
}
