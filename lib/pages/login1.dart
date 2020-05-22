import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
// Create a Form widget.
class Login1 extends StatefulWidget  {
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
class MyCustomFormState extends State<Login1> {
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
     var _username;
      var _password;

    return MaterialApp(
      title: "appTitle",
      home: Scaffold(
        appBar: AppBar(
          title: Text("appTitle"),
        ),
        body:Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
                  Text("Username"),
                  SizedBox(width: 5,),
                  Container(
                    width: 200,
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        _username=value;
                        return null;
                      },
                      onSaved: (value) {
                      _username=value; 
                      },
                    )
                  )]
          
          ),
          SizedBox(height: 5,),
          Row(
            children: <Widget>[
                  Text("Password"),
                  SizedBox(width: 5,),
                  Container(
                    width: 200,
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                      
                        
                        return null;
                      },
                      onSaved: (value) {
                      _password=value; 
                      },
                    )
                  )]
          
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  //  If the form is valid, display a Snackbar.
                  // Scaffold.of(context)
                  //     .showSnackBar(SnackBar(content: Text('Đăng nhập thành công')));
                 _formKey.currentState.save();
                 if (_username=="admin" && _password=="admin") {
                 
                  Navigator.pushNamed(context, '/profile');
                  }
                   
                }
                
              },
              child: Text('Submit'),
            ),
          ),
          Center(
                    child: FutureBuilder<Album>(
                      future: futureAlbum,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(snapshot.data.title);
                        } else if (snapshot.hasError) {
                          return Text("${snapshot.error}");
                        }

                        // By default, show a loading spinner.
                        return CircularProgressIndicator();
                      },
                    ),
          ),

        ],
      ),
    )
      )
    );
  }
}