import 'package:flutter/material.dart';

class ContactDetailScreen extends StatefulWidget {
  @override
  _ContactDetailScreenState createState() => _ContactDetailScreenState();
}

class _ContactDetailScreenState extends State<ContactDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                elevation: 0,
                actions: <Widget>[
                  IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.star_border),
                    onPressed: () {
                    },
                  ),
                  IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.edit),
                    onPressed: () {
                    },
                  ),
                ],
     ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              buildHeader(context, "snapshot['name']"),
              buildInformation(
                  "snapshot['phoneNumber']", "snapshot['email']", "snapshot['name']"),
            ],
          )
        ],
      ),
    );
  }


  Container buildHeader(BuildContext context, String name) {
    return Container(
      decoration: BoxDecoration(color: Colors.indigo),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.40,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          SizedBox(height: 20),
          Icon(
            Icons.person,
            color: Colors.white,
            size: 160,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  name,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


  Padding buildInformation(phoneNumber, email, nome) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(phoneNumber.toString().isNotEmpty
                  ? phoneNumber
                  : "defaultMessage"),
              subtitle: Text(
                "Telefone",
                style: TextStyle(color: Colors.black54),
              ),
              leading: IconButton(
                icon: Icon(Icons.phone, color: Colors.indigo),
                onPressed: () {

                },
              ),
              trailing: IconButton(
                icon: Icon(Icons.message),
                onPressed: () {

                },
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(email.toString().isNotEmpty ? email : "defaultMessage"),
              subtitle: Text(
                "E-mail",
                style: TextStyle(color: Colors.black54),
              ),
              leading: IconButton(
                  icon: Icon(Icons.email, color: Colors.indigo),
                  onPressed: () {}),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "Enviar contato",
              ),
              subtitle: Text(
                "Compartilhar",
                style: TextStyle(color: Colors.black54),
              ),
              leading: IconButton(
                  icon: Icon(Icons.share, color: Colors.indigo),
                  onPressed: () {

                  }),
            ),
          ),
          Card(
            child: Container(),
          ),
        ],
      ),
    );
  }


}
