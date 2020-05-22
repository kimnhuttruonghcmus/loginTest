import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
// Create a Form widget.
class Profile extends StatefulWidget  {
  // This widget is the root of your application.
  
  MyCustomFormState createState() => MyCustomFormState();
}
// Create a corresponding State class.
// This class holds data related to the form.

Future<Album> fetchAlbum() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/albums/1');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  Album({this.userId, this.id, this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
class MyCustomFormState extends State<Profile> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
 Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }
   final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above
    
    return MaterialApp(
      title: "appTitle",
      home: Scaffold(
        appBar: AppBar(
          title: Text("appTitle"),
        ),
        body:Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // background image and bottom contents
            Column(
              children: <Widget>[
                Container(
                  height: 200.0,
                  color: Colors.orange,
                  child: Center(
                    child: Text('Background image goes here'),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text('Content goes here'),
                    ),
                  ),
                )
              ],
            ),
            // Profile image
            Positioned(
              top: 100.0, // (background container size) - (circle height / 2)
              child:  
              Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  // image: DecorationImage(
                image: DecorationImage(
                image: AssetImage("images/blinkistw.png"),
                fit: BoxFit.cover,
            ),
                ),
              ),
            )
          //   ),
          
        ],
      ),
    )
      );
  }
}