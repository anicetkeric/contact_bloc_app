import 'dart:math';

import 'package:contact_bloc_app/core/constants/route_constants.dart';
import 'package:contact_bloc_app/core/constants/strings.dart';
import 'package:contact_bloc_app/data/json/dummy_json.dart';
import 'package:contact_bloc_app/data/models/contact_model.dart';
import 'package:contact_bloc_app/ui/widget/app_bar.dart';
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          //context.read<TodoCubit>().createTodo(this.title);
          Navigator.pushNamed(context, RouteConstants.contacts_details);

        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Container(
        child: RefreshIndicator(
          child: ListView.builder(
            itemCount: contactDummyData.length,
            itemBuilder: (context, index) {
              Contact _model = contactDummyData[index];
              return Column(
                children: <Widget>[
                  Divider(
                    height: 12.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      child: Text(
                        _model.name.substring(0, 1).toUpperCase(),
                        style: TextStyle(fontSize: 26, color: Colors.white70),
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
