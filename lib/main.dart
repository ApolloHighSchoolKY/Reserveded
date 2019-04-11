import 'package:flutter/material.dart';
import 'pages/landing_page.dart';

void main() => runApp(Reserved());
const PrimaryColor = const Color(0x8C0004);

class Reserved extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: new Center(
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text("Please Login"),
            backgroundColor: PrimaryColor,
          ),
          body:new LandingPage(),
        ),
      )
    );
  }
}
