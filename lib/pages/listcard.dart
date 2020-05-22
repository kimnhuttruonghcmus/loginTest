import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ListCard extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      home: Scaffold(
        body: Center(
        child:Container(
          child: Column(
            children: <Widget>[
              // Expanded(
              //   flex: 2,
              //   child: Container(
              //     child:Row(
              //       children: <Widget>[
              //         Text("Viết cái gì đó"),
              //       ]
              //     )
              //   )
              // ),
              Expanded(
                flex: 15,
                child: 
                Container(
                color: Colors.blue,
                  child: Container(
                      child: 
                      CustomScrollView(
                        primary: false,
                        slivers: <Widget>[
                          SliverPadding(
                            padding: const EdgeInsets.all(30),
                            sliver: SliverGrid.count(
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              crossAxisCount: 2,
                              children: <Widget>[
                                RaisedButton(
                                  color: Colors.pink,
                                  onPressed: () {
                                      Navigator.pushNamed(context, '/carddetail');
                                    },
                                  child: Container(
                                    width:400,
                                    height:400,
                                    child:Text("card"),
                                    decoration: BoxDecoration(
                                    color:Colors.red,
                                    borderRadius: BorderRadius.circular(10.0),
                                    )
                                  )
                                ),
                                RaisedButton(
                                  color: Colors.pink,
                                  onPressed: () {
                                      Navigator.pushNamed(context, '/carddetail');
                                    },
                                  child: Container(
                                    width:400,
                                    height:400,
                                    child:Text("card"),
                                    decoration: BoxDecoration(
                                    color:Colors.red,
                                    borderRadius: BorderRadius.circular(10.0),
                                    )
                                  )
                                ),
                                RaisedButton(
                                  color: Colors.pink,
                                  onPressed: () {
                                      Navigator.pushNamed(context, '/carddetail');
                                    },
                                  child: Container(
                                    width:400,
                                    height:400,
                                    child:Text("card"),
                                    decoration: BoxDecoration(
                                    color:Colors.red,
                                    borderRadius: BorderRadius.circular(10.0),
                                    )
                                  )
                                ),
                                RaisedButton(
                                  color: Colors.pink,
                                  onPressed: () {
                                      Navigator.pushNamed(context, '/carddetail');
                                    },
                                  child: Container(
                                    width:400,
                                    height:400,
                                    child:Text("card"),
                                    decoration: BoxDecoration(
                                    color:Colors.red,
                                    borderRadius: BorderRadius.circular(10.0),
                                    )
                                  )
                                ),
                                RaisedButton(
                                  color: Colors.pink,
                                  onPressed: () {
                                      Navigator.pushNamed(context, '/carddetail');
                                    },
                                  child: Container(
                                    width:400,
                                    height:400,
                                    child:Text("card"),
                                    decoration: BoxDecoration(
                                    color:Colors.red,
                                    borderRadius: BorderRadius.circular(10.0),
                                    )
                                  )
                                ),
                                RaisedButton(
                                  color: Colors.pink,
                                  onPressed: () {
                                      Navigator.pushNamed(context, '/carddetail');
                                    },
                                  child: Container(
                                    width:400,
                                    height:400,
                                    child:Text("card"),
                                    decoration: BoxDecoration(
                                    color:Colors.red,
                                    borderRadius: BorderRadius.circular(10.0),
                                    )
                                  )
                                ),
                                RaisedButton(
                                  color: Colors.pink,
                                  onPressed: () {
                                      Navigator.pushNamed(context, '/carddetail');
                                    },
                                  child: Container(
                                    width:400,
                                    height:400,
                                    child:Text("card"),
                                    decoration: BoxDecoration(
                                    color:Colors.red,
                                    borderRadius: BorderRadius.circular(10.0),
                                    )
                                  )
                                ),
                                RaisedButton(
                                  color: Colors.pink,
                                  onPressed: () {
                                      Navigator.pushNamed(context, '/carddetail');
                                    },
                                  child: Container(
                                    width:400,
                                    height:400,
                                    child:Text("card"),
                                    decoration: BoxDecoration(
                                    color:Colors.red,
                                    borderRadius: BorderRadius.circular(10.0),
                                    )
                                  )
                                ),
                                RaisedButton(
                                  color: Colors.pink,
                                  onPressed: () {
                                      Navigator.pushNamed(context, '/carddetail');
                                    },
                                  child: Container(
                                    width:400,
                                    height:400,
                                    child:Text("card"),
                                    decoration: BoxDecoration(
                                    color:Colors.red,
                                    borderRadius: BorderRadius.circular(10.0),
                                    )
                                  )
                                ),
                                RaisedButton(
                                  color: Colors.pink,
                                  onPressed: () {
                                      Navigator.pushNamed(context, '/carddetail');
                                    },
                                  child: Container(
                                    width:400,
                                    height:400,
                                    child:Text("card"),
                                    decoration: BoxDecoration(
                                    color:Colors.red,
                                    borderRadius: BorderRadius.circular(10.0),
                                    )
                                  )
                                ),
                                RaisedButton(
                                  color: Colors.pink,
                                  onPressed: () {
                                      Navigator.pushNamed(context, '/carddetail');
                                    },
                                  child: Container(
                                    width:400,
                                    height:400,
                                    child:Text("card"),
                                    decoration: BoxDecoration(
                                    color:Colors.red,
                                    borderRadius: BorderRadius.circular(10.0),
                                    )
                                  )
                                ),
                                RaisedButton(
                                  color: Colors.pink,
                                  onPressed: () {
                                      Navigator.pushNamed(context, '/carddetail');
                                    },
                                  child: Container(
                                    width:400,
                                    height:400,
                                    child:Text("card"),
                                    decoration: BoxDecoration(
                                    color:Colors.red,
                                    borderRadius: BorderRadius.circular(10.0),
                                    )
                                  )
                                ),
                                RaisedButton(
                                  color: Colors.pink,
                                  onPressed: () {
                                      Navigator.pushNamed(context, '/carddetail');
                                    },
                                  child: Container(
                                    width:400,
                                    height:400,
                                    child:Text("card"),
                                    decoration: BoxDecoration(
                                    color:Colors.red,
                                    borderRadius: BorderRadius.circular(10.0),
                                    )
                                  )
                                ),


                                RaisedButton(
                                  color: Colors.pink,
                                  onPressed: () {
                                      Navigator.pushNamed(context, '/login');
                                    },
                                  child: Container(
                                    width:400,
                                    height:400,
                                    child:Text("Game"),
                                    decoration: BoxDecoration(
                                    color:Colors.red,
                                    borderRadius: BorderRadius.circular(10.0),
                                    )
                                  )
                                ),
                              ]
                            )
                          )
                        ]
                      )
                          
                     )
                    )
                   
                ),
              
            ],
          ),
        )
        )
      ),
    );
  }
}
