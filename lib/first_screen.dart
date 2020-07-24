import 'package:flutter/material.dart';

import './contact.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Title container
        Container(
            alignment: Alignment.bottomCenter,
            height: 300,
            child: Text('Circle',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Aleo',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ))),
        // App description container
        Container(
            alignment: Alignment.center,
            height: 50,
            child: Text('Organizing relationships made easier!',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0))),
        // Button container
        Container(
            alignment: Alignment.center,
            child: RaisedButton(
                color: Colors.purple,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Contact()));
                },
                child: Text('Get Started',
                    style: TextStyle(
                        fontFamily: 'Aleo',
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))))
      ],
    );
  }
}
