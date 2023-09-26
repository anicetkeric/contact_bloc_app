import 'dart:math';

import 'package:contact_bloc_app/data/json/dummy_json.dart';
import 'package:contact_bloc_app/views/widget/app_bar.dart';
import 'package:contact_bloc_app/views/widget/new_contacts_floating_action.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {

  bool isLandscape(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.landscape;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: Appbar(),
        floatingActionButton: NewContactFloatingAction(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: _favoritesCard()
    );
  }

  Widget _favoritesCard() {
    return SafeArea(
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        padding: EdgeInsets.all(5),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 1.2,
        children: List.generate(contactDummyData.length, (index) {
          return
            GestureDetector(
                onTap: () {

               /*   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                    return ContactDetailScreen();
                  }));
*/
                  //Navigator.pushNamed(context, RouteConstants.contact_add)
                  },
                child:
            Container(
            padding: EdgeInsets.fromLTRB(10,10,10,0),
            height: 100,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                    child: Text(
                      contactDummyData[index].name.substring(0, 1).toUpperCase(),
                      style: TextStyle(fontSize: 18, color: Colors.white70),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: new EdgeInsets.only(right: 10.0, left: 10.0),
                    child: Text(contactDummyData[index].name,
                      overflow: TextOverflow.ellipsis,),
                  )
                ],
              ),
            ),
          ));
        }),
      ),
    );
  }
}
