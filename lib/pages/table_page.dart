import 'package:flutter/material.dart';

//Variables needed for smart stuff
bool tableOneOpen = true;
bool tableTwoOpen = true;
bool tableThreeOpen = true;
bool tableFourOpen = true;
bool tableFiveOpen = true;
bool tableSixOpen = true;
bool tableSevenOpen = true;
bool tableEightOpen = true;
bool tableNineOpen = true;
bool tableTenOpen = true;
var tableTimerOne = new Stopwatch();

//The actual building of the table page
class TablePage extends StatefulWidget{
  @override
  _TablePageState createState() => new _TablePageState();
}

class _TablePageState extends State<TablePage>{
  @override
  Widget build(BuildContext context){
    //MediaQueryData queryData = MediaQuery.of(context);
    return new Stack(
      children: <Widget>[ 
        new Container(
          child: new Image.asset(
            'assets/Layouts/luketables.png',
            fit: BoxFit.fill,
          ),
        ),
        new Positioned(
          left: 570.0,
          top: 525.0,
          child: new Text("${tableTimerOne.elapsedMilliseconds}",),
        ),
        new Positioned(
          //Table 1
          left: 78.0,
          top: 58.0,
          child: ButtonTheme(
            minWidth: 120.0,
            height: 155.0,
            child: RaisedButton(
              onPressed: (){
                setState(() => tableOneOpen = !tableOneOpen);
                if (tableOneOpen == false) {
                  tableTimerOne.start();
                }
                else if (tableOneOpen == true){
                  tableTimerOne.stop();
                  tableTimerOne.reset();
                }
              },
              child: Text('4'),
              color: tableOneOpen ? Colors.greenAccent: Colors.redAccent,
            )
          )
        ),
        new Positioned(
          //table 2
          left: 75.0,
          top: 306.0,
          child: ButtonTheme(
            minWidth: 115.0,
            height: 132.0,
            child: RaisedButton(
              onPressed: (){
                setState(() => tableTwoOpen = !tableTwoOpen);
              },
              child: Text('4'),
              color: tableTwoOpen ? Colors.greenAccent: Colors.redAccent,
            )
          )
        ),
        new Positioned(
          //table 3
          left: 72.0,
          top: 529.0,
          child: ButtonTheme(
            minWidth: 114.0,
            height: 116.0,
            child: RaisedButton(
              onPressed: (){
                setState(() => tableThreeOpen = !tableThreeOpen);
              },
              child: Text('4'),
              color: tableThreeOpen ? Colors.greenAccent: Colors.redAccent,
            )
          )
        ),
        new Positioned(
          //table 4
          left: 70.0,
          top: 830.0,
          child: ButtonTheme(
            minWidth: 97.0,
            height: 132.0,
            child: RaisedButton(
              onPressed: (){
                setState(() => tableFourOpen = !tableFourOpen);
              },
              child: Text('4'),
              color: tableFourOpen ? Colors.greenAccent: Colors.redAccent,
            )
          )
        ),
        new Positioned(
          //table 5
          left: 300.0,
          top: 90.0,
          child: ButtonTheme(
            minWidth: 197.0,
            height: 155.0,
            child: RaisedButton(
              onPressed: (){
                setState(() => tableFiveOpen = !tableFiveOpen);
              },
              child: Text('6'),
              color: tableFiveOpen ? Colors.greenAccent: Colors.redAccent,
            )
          )
        ),
        new Positioned(
          //table 6
          left: 360.0,
          top: 345.0,
          child: ButtonTheme(
            minWidth: 130.0,
            height: 270.0,
            child: RaisedButton(
              onPressed: (){
                setState(() => tableSixOpen = !tableSixOpen);
              },
              child: Text('8'),
              color: tableSixOpen ? Colors.greenAccent: Colors.redAccent,
            )
          )
        ),
        new Positioned(
          //table 7
          left: 320.0,
          top: 725.0,
          child: ButtonTheme(
            minWidth: 210.0,
            height: 190.0,
            child: RaisedButton(
              onPressed: (){
                setState(() => tableSevenOpen = !tableSevenOpen);
              },
              child: Text('6'),
              color: tableSevenOpen ? Colors.greenAccent: Colors.redAccent,
            )
          )
        ),
        new Positioned(
          //table 8
          left: 570.0,
          top: 70.0,
          child: ButtonTheme(
            minWidth: 140.0,
            height: 140.0,
            child: RaisedButton(
              onPressed: (){
                setState(() => tableEightOpen = !tableEightOpen);
              },
              child: Text('4'),
              color: tableEightOpen ? Colors.greenAccent: Colors.redAccent,
            )
          )
        ),
        new Positioned(
          //table 9
          left: 570.0,
          top: 305.0,
          child: ButtonTheme(
            minWidth: 132.0,
            height: 145.0,
            child: RaisedButton(
              onPressed: (){
                setState(() => tableNineOpen = !tableNineOpen);
              },
              child: Text('4'),
              color: tableNineOpen ? Colors.greenAccent: Colors.redAccent,
            )
          )
        ),
        new Positioned(
          //table 10
          left: 568.0,
          top: 550.0,
          child: ButtonTheme(
            minWidth: 135.0,
            height: 130.0,
            child: RaisedButton(
              onPressed: (){
                setState(() => tableTenOpen = !tableTenOpen);
              },
              child: Text('4'),
              color: tableTenOpen ? Colors.greenAccent: Colors.redAccent,
            )
          )
        ),
      ],
    );
  }
}

//Execute Order 66
//Big agree