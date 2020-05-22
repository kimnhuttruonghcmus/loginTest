import 'package:blinkist/pages/carddetail.dart';
import 'package:flutter/material.dart';
import 'package:blinkist/pages/login.dart';
import 'package:blinkist/pages/home.dart';
import 'package:blinkist/pages/listcard.dart';
import 'package:blinkist/pages/game.dart';
import 'package:blinkist/pages/register.dart';
import 'package:blinkist/pages/login1.dart';
import 'package:blinkist/pages/profile.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login1',
      routes: {
        '/login': (context)=>Login(),
        '/login1': (context)=>Login1(),
        '/register': (context)=>Register(),
        '/home': (context)=>Home(),
        '/listcard': (context)=>ListCard(),
        '/carddetail': (context)=>CardDetail(),
        '/game': (context)=>Game(),
        '/profile': (context)=>Profile(),
      },
      );
    
  }
}