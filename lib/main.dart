import 'dart:ffi';

import 'package:circle_interface/contact.dart';
import 'package:circle_interface/first_screen.dart';
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
        title: Text('Circle'),
        backgroundColor: Colors.purple[300],
      ),
      body: FirstScreen(),
    ));
  }
}
