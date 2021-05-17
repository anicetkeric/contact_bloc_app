import 'package:flutter/material.dart';

class RecentScreen extends StatefulWidget {
  @override
  _RecentScreenState createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
              bottom: false,
              child: Column(children: <Widget>[
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey[100]),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    suffixIcon: IconButton(
                                        icon: Icon(
                                          Icons.qr_code,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        onPressed: () =>{})),
                                style: TextStyle(
                                    color: Colors.black87.withOpacity(0.6)),
                              ),
                            ),
                          )),
                      Expanded(
                        flex: 0,
                        child: Icon(
                          Icons.tune_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                )
              ])),
        ),
        body: Center(
        child: Text('recent'),
    )
    );
  }
}
