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
          body: new HomeWidget(),
            ),

        ),
      );
    }
}

class HomeWidget extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 20, 
      itemBuilder: (context, rowNumber){
        return new Column(
          children: <Widget>[
            new Text("test1 $rowNumber"),
            new Text("test2 $rowNumber"),
            new Divider()
          ],
        );

      },

    );
   
    }

}
 