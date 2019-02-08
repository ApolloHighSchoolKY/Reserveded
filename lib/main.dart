import 'package:flutter/material.dart';

void main() => runApp(Reserved());

class Reserved extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:"Reserved",
      home: new Center(
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text("Reserve a table"),
          ),
          body:new Center(
            child: new Text("Center"),
            ),

        ),
      ),
    );
    }
}


 