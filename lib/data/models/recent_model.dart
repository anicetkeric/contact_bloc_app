import 'package:flutter/material.dart';

import 'CallType.dart';
import 'contact_model.dart';

class Recent {
  int id;
  Contact contact;
  String phoneNumber;
  DateTime dateStart;
  DateTime dateEnd;
  CallType type;
  String location;

  Recent({
    @required this.id,
    this.contact,
    this.phoneNumber,
    @required this.dateStart,
    this.dateEnd,
    @required this.type,
    this.location
  });

  factory Recent.fromJson(Map<String, dynamic> json) {
    return Recent(
        id :json['id'],
        contact: json['contact'],
        phoneNumber: json['phoneNumber'],
        dateStart: json['dateStart'],
        dateEnd: json['dateEnd'],
        type: json['type'],
        location: json['location']
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['contact'] = this.contact;
    data['phoneNumber'] = this.phoneNumber;
    data['dateStart'] = this.dateStart;
    data['dateEnd'] = this.dateEnd;
    data['type'] = this.type;
    data['location'] = this.location;
    return data;
  }

}

