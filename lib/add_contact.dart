import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class AddContact extends StatefulWidget {
  State<StatefulWidget> createState() {
    return AddContactState();
  }
}

class AddContactState extends State<AddContact> {
  File _image;
  final picker = ImagePicker();

  // Get image from photo
  Future _getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            // Page description
            Container(
                height: 100,
                alignment: Alignment.bottomCenter,
                child: Text('Add New Contact',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            // Space between description and image
            Container(height: 20),
            // Upload image
            Container(
              height: 100,
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: _getImage,
                child: Container(
                  child: _image == null
                      ? Icon(Icons.add_a_photo)
                      : Image.file(_image),
                ),
              ),
            ),
            // Name
            Container(
                padding: const EdgeInsets.all(30),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'First Name'),
                      ),
                    ),
                    Flexible(
                        flex: 1,
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Last Name')))
                  ],
                )),
            // Phone number
            Container(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Phone Number'),
                )),
            // Email
            Container(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Email'),
                )),
            // Tag
            Container(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Tag'),
                )),
            // Uplpad button
            Container(
                alignment: Alignment.topCenter,
                child: RaisedButton(
                    color: Colors.purple,
                    onPressed: () {},
                    child: Text('Upload Contact',
                        style: TextStyle(
                            fontFamily: 'Aleo',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)))),
          ],
        )));
  }
}

// Old version
/*
class Contact extends StatelessWidget {
  Contact();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      // "Add New Contact" Title
      Flexible(
        flex: 1,
        child: Container(
            alignment: Alignment.bottomCenter,
            child: Text('Add New Contact',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
      ),
      // Select image

      Flexible(
        flex: 1,
        child: // Name container
            Container(
                padding: const EdgeInsets.all(30),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      // flex: 1,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'First Name'),
                      ),
                    ),
                    Flexible(
                        // flex: 1,
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Last Name')))
                  ],
                )),
      ),
      Flexible(
        flex: 3,
        child:
            // Phone number container
            Container(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Phone Number'),
                )),
      ),
      Flexible(
        flex: 1,
        child:
            // Email container
            Container(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Email'),
                )),
      ),
      Flexible(
        flex: 1,
        // Tag
        child: Container(
            padding: const EdgeInsets.all(30),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Tag'),
            )),
      ),
      // Uplpad button
      Flexible(
        flex: 1,
        child: Container(
            alignment: Alignment.topCenter,
            child: RaisedButton(
                color: Colors.purple,
                onPressed: () {},
                child: Text('Upload Contact',
                    style: TextStyle(
                        fontFamily: 'Aleo',
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)))),
      ),

      /*
      Container(
          height: 100,
          alignment: Alignment.bottomCenter,
          child: Text('Add New Contact',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
      // Name container
      Container(
          padding: const EdgeInsets.all(30),
          alignment: Alignment.center,
          child: Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'First Name'),
                ),
              ),
              Flexible(
                  flex: 1,
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
          )),
      // Submit button
      Container(
          alignment: Alignment.topCenter,
          child: RaisedButton(
              color: Colors.purple,
              onPressed: () {},
              child: Text('Upload Contact',
                  style: TextStyle(
                      fontFamily: 'Aleo',
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)))),

      */
    ]));
  }
}
*/

// Old version
/**
 * 
 * Column(
          children: <Widget>[
            // Page description
            Container(
                height: 100,
                alignment: Alignment.bottomCenter,
                child: Text('Add New Contact',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            // Space between description and image
            Container(height: 20),
            // Upload image
            Container(
              height: 100,
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: _getImage,
                child: Container(
                  child: _image == null
                      ? Icon(Icons.add_a_photo)
                      : Image.file(_image),
                ),
              ),
            ),
            // Name
            Container(
                padding: const EdgeInsets.all(30),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'First Name'),
                      ),
                    ),
                    Flexible(
                        flex: 1,
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Last Name')))
                  ],
                )),
            // Phone number
            Container(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Phone Number'),
                )),
            // Email
            Container(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Email'),
                )),
            // Tag
            Container(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Tag'),
                )),
            // Uplpad button
            Container(
                alignment: Alignment.topCenter,
                child: RaisedButton(
                    color: Colors.purple,
                    onPressed: () {},
                    child: Text('Upload Contact',
                        style: TextStyle(
                            fontFamily: 'Aleo',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)))),
          ],
        )
 * 
 * 
 */
