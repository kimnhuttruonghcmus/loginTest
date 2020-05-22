import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Column(
          children: <Widget>[
            ///HEAD
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 200,
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child:
                          Image(
                          image: AssetImage('images/blinkistw.png'),
                          width: 200
                          ,
                        ),
                    ),
                  ),
                  Container(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child:
                          Image(
                          image: AssetImage('images/blinkist-online-advertising.gif'),
                          width: 200
                          ,
                        ),
                    ),
                    
                  ),
                  Container(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child:Text("Blinks"),
                        ),
                  ),
                  Container(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child:Text("Get the key ideas from in 15 minutes "),
                        ),
                  ),
                ]
              ),
            ),
            ////BODY
            Container(
              child: Column(
                children: <Widget>[  
                  Container(
                    child: Row(
                        children: <Widget>[
                          Container(
                            child: Card(
                                    child: Column(
                                    
                                      children: <Widget>[
                                    
                                      ]
                                    )
                                ),
                          ),
                          Container(
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child:
                                  Image(
                                  image: AssetImage('images/blinkistw.png'),
                                  width: 200
                                  ,
                                ),
                            ),
                          ),
                        ]  
                    ),
                  ),
                ],
              ),
            ),
             ////FOOTER
            Container(
              child: Column(
                children: <Widget>[  
              Container(
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                                  width: 370, // specific value
                                  child: RaisedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/home');
                                    },
                                    child: const Text('Get started', style: TextStyle(fontSize: 20)),
                                    color: Colors.red
                                  )
                                )
                        ),
              ),
              Container(
                
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            
                            child: SizedBox(
                                  
                                  width: 370, // specific value
                                  child: RaisedButton(
                                    onPressed: () {},
                                    child: const Text('Log in', style: TextStyle(fontSize: 20,color: Colors.greenAccent)),
                                    color: Colors.white
                                  )
                                )
                        ),
              ),
                ],
              ),
            ),

          ],
        ),
        ),
      ),
      
    );
  }
}
