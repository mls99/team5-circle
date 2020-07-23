import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return first screen widgets
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Circle"),
              backgroundColor: Colors.purple[300],
            ),
            body: Column(
              children: <Widget>[
                Container(
                    alignment: Alignment.bottomCenter,
                    height: 300,
                    child: Text("Circle",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Aleo",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                        ))),
                Container(
                    alignment: Alignment.center,
                    height: 50,
                    child: Text("Organizing relationships made easier!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20.0))),
                Container(
                    alignment: Alignment.center,
                    child: RaisedButton(
                        color: Colors.purple,
                        onPressed: () {},
                        child: Text('Get Started',
                            style: TextStyle(
                                fontFamily: "Aleo",
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))))
              ],
            )));
  }
}
