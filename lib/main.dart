import 'package:flutter/material.dart';
import 'pages/landing_page.dart';

void main() => runApp(Reserved());

class Reserved extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:"Reserved",
      home: new Center(
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text("Please Login"),
          ),
          body:new LandingPage(),
        ),
      )
    );
  }
}
