import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget  {
  // This widget is the root of your application.
  
  _Home createState() => _Home();
}
class _Home extends State<Home> {
  @override
  int index=0;
  var isSelected= [true,false,false];
  Widget build(BuildContext context) {
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      home: Scaffold(
        body: Center(
        child:Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child:Row(
                    children: <Widget>[
                      Text("Viết cái gì đó"),
                    ]
                  )
                )
              ),
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
                                      Navigator.pushNamed(context, '/listcard');
                                    },
                                  child: Container(
                                    width:400,
                                    height:400,
                                    child:Text("Listcard"),
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
              Container(
                height:50,
                alignment:Alignment.bottomLeft,
                child:Row(children: <Widget>[
                  ToggleButtons(
                    children: [
                  Icon(Icons.access_time),
                  Icon(Icons.accessibility),
                  Icon(Icons.access_time)
                    ]
                  , 
                  isSelected: isSelected,
                  selectedColor: Colors.green,
                  onPressed: (int index)
                  {
                    setState((){
                    for (int buttonIndex = 0; buttonIndex < isSelected.length; buttonIndex++) {
        if (buttonIndex == index) {
          isSelected[buttonIndex] = !isSelected[buttonIndex];
        } else {
          isSelected[buttonIndex] = false;
        }
      }
                    });
                  },)
                ],)
              )
            ],
          ),
        )
        )
      ),
    );
  }
}
