import 'package:flutter/material.dart';

class Contact {
  int id;
  String name;
  String? email;
  String? work;
  String phone;
  String? website;

  Contact({
    required this.id,
    required this.name,
    this.work,
    required this.phone,
    this.email,
    this.website
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
    id :json['id'],
    name: json['name'],
    work: json['work'],
    phone: json['phone'],
    email: json['email'],
    website: json['website'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['work'] = this.work;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['website'] = this.website;
    return data;
  }

}

