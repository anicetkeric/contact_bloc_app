import 'package:contact_bloc_app/ui/widget/app_bar.dart';
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
        body: Center(
        child: Text('recent'),
    )
    );
  }
}
