import 'package:flutter/material.dart';
import 'package:blinkist/pages/login.dart';
import 'package:flutter/rendering.dart';
class Game extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //appBar: AppBar(
        //  ,
        //),
        
        body:Container(
          child: Column(
           
            children: <Widget>[
              Expanded(child: Login(),)
              ,
              Container(
                color: Colors.redAccent,
                child: Align(
                    
                    alignment: Alignment.bottomCenter,
                    child:
                    RaisedButton.icon(
                      onPressed: () {
                                      Navigator.pushNamed(context, '/home');
                                    }, 
                      icon: Icon(Icons.home), 
                      label: Text("Home")
                      
                      // Image(
                      // height: 0.15*MediaQuery.of(context).size.width,
                      // image: AssetImage('images/blinkistw.png'),
                      // width: 200
                      
                      ,
                    ),
                ),
              ),
            ],
        ),
        )
        
        
      ),
      
    );
  }
}
