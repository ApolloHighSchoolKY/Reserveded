import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold( 
      appBar: new AppBar(title: new Text("Drawer App"),),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("First page"),
              trailing: new Icon(Icons.arrow_upward),
            ),

             new ListTile(
              title: new Text("Second page"),
              trailing: new Icon(Icons.arrow_right),
              ),

              new Divider(),
              
              new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.cancel), 
              )

          ],
        ),
      ),
      body: new Center(
        child: new Text("HomePage"),
      ),
    );
      
    
  }
}