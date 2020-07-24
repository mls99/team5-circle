import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Contact extends StatelessWidget {
  Contact();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      // "Add New Contact" Title
      Container(
          height: 100,
          alignment: Alignment.bottomCenter,
          child: Text('Add New Contact',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
      // Name container
      Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Row(
            children: <Widget>[
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'First Name'),
                ),
              ),
              Flexible(
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Last Name')))
            ],
          )),
      // Phone number container
      Container(
          padding: const EdgeInsets.all(30),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Phone Number'),
          )),
      // Email container
      Container(
          padding: const EdgeInsets.all(30),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Email'),
          )),
      // Tag container
      Container(
          padding: const EdgeInsets.all(30),
          child: TextField(
            decoration:
                InputDecoration(border: OutlineInputBorder(), hintText: 'Tag'),
          ))
    ]));
  }
}
