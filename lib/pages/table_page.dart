import 'package:flutter/material.dart';

//The actual building of the table page
class TablePage extends StatefulWidget{
  @override
  _TablePageState createState() => new _TablePageState();
}

class _TablePageState extends State<TablePage>{
  @override
  Widget build(BuildContext context){
    return new Stack(
      children: <Widget>[ 
        new Container(
          child: new Image.asset(
            'assets/Layouts/luketables.png',
            fit: BoxFit.fill,
          ),
        ),
        new Positioned(
          left: 37.0,
          top: 27.0,
          child: ButtonTheme(
            minWidth: 57.0,
            height: 75.0,
            child: RaisedButton(
              onPressed: null,
              color: Colors.redAccent,
              child: Text('4'),
            )
          )
        )
      ],
    );
  }
}