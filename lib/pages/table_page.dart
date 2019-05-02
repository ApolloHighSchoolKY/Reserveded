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
var tableTimerTwo = new Stopwatch();
var tableTimerThree = new Stopwatch();
var tableTimerFour = new Stopwatch();
var tableTimerFive = new Stopwatch();
var tableTimerSix = new Stopwatch();
var tableTimerSeven = new Stopwatch();
var tableTimerEight = new Stopwatch();
var tableTimerNine = new Stopwatch();
var tableTimerTen = new Stopwatch();
List<int> tableTime = [];

//The actual building of the table page
class TablePage extends StatefulWidget{
  final String value;
  TablePage({Key key, this.value}) : super (key: key);
  
  @override
  _TablePageState createState() => new _TablePageState();
}

class _TablePageState extends State<TablePage>{
  @override
  Widget build(BuildContext context){
    //MediaQueryData queryData = MediaQuery.of(context);   
    return new Scaffold( 
      appBar: new AppBar(title: new Text("Floorplan"),),
      body: Stack(
        children: <Widget>[ 
          new Container(
            child: new Image.asset(
              'assets/Layouts/luketables.png',
              fit: BoxFit.fill,
            ),
          ),
        new Positioned(
          left: 570.0,
          top: 700.0,
          child: new Text("${tableTimerOne.elapsed.inMinutes}"),
        ),
        new Positioned(
          //Table 1
          left: 31.0,
          top: 25.0,
          child: ButtonTheme(
            minWidth: 52.0,
            height: 64.0,
            child: RaisedButton(
              onPressed: (){
                //This code and all similar looking code changes the state of the table to
                //available/unavailable and starts the timer for how long it took for the
                //table to be served
                setState(() => tableOneOpen = !tableOneOpen);
                if (tableOneOpen == false) {
                  tableTimerOne.start();
                }
                else if (tableOneOpen == true){
                  tableTimerOne.stop();
                  tableTime.add(tableTimerOne.elapsed.inSeconds);
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
          left: 30.0,
          top: 130.0,
          child: ButtonTheme(
            minWidth: 50.0,
            height: 53.0,
            child: RaisedButton(
              onPressed: (){
                setState(() => tableTwoOpen = !tableTwoOpen);
                if (tableTwoOpen == false) {
                  tableTimerTwo.start();
                }
                else if (tableTwoOpen == true){
                  tableTimerTwo.stop();
                  tableTime.add(tableTimerTwo.elapsed.inSeconds);
                  tableTimerTwo.reset();
                }
              },
              child: Text('4'),
              color: tableTwoOpen ? Colors.greenAccent: Colors.redAccent,
            )
          )
        ),
        new Positioned(
          //table 3
          left: 27.0,
          top: 220.0,
          child: ButtonTheme(
            minWidth: 52.0,
            height: 54.0,
            child: RaisedButton(
              onPressed: (){
                setState(() => tableThreeOpen = !tableThreeOpen);
                if (tableThreeOpen == false) {
                  tableTimerThree.start();
                }
                else if (tableThreeOpen == true){
                  tableTimerThree.stop();
                  tableTime.add(tableTimerThree.elapsed.inSeconds);
                  tableTimerThree.reset();
                }
              },
              child: Text('4'),
              color: tableThreeOpen ? Colors.greenAccent: Colors.redAccent,
            )
          )
        ),
        new Positioned(
          //table 4
          left: 25.0,
          top: 350.0,
          child: ButtonTheme(
            minWidth: 45.0,
            height: 55.0,
            child: RaisedButton(
              onPressed: (){
                setState(() => tableFourOpen = !tableFourOpen);
                if (tableFourOpen == false) {
                  tableTimerFour.start();
                }
                else if (tableFourOpen == true){
                  tableTimerFour.stop();
                  tableTime.add(tableTimerFour.elapsed.inSeconds);
                  tableTimerFour.reset();
                }
              },
              child: Text('4'),
              color: tableFourOpen ? Colors.greenAccent: Colors.redAccent,
            )
          )
        ),
        new Positioned(
          //table 5
          left: 125.0,
          top: 40.0,
          child: ButtonTheme(
            minWidth: 80.0,
            height: 70.0,
            child: RaisedButton(
              onPressed: (){
                setState(() => tableFiveOpen = !tableFiveOpen);
                if (tableFiveOpen == false) {
                  tableTimerFive.start();
                }
                else if (tableFiveOpen == true){
                  tableTimerFive.stop();
                  tableTime.add(tableTimerFive.elapsed.inSeconds);
                  tableTimerFive.reset();
                }
              },
              child: Text('6'),
              color: tableFiveOpen ? Colors.greenAccent: Colors.redAccent,
            )
          )
        ),
        new Positioned(
          //table 6
          left: 150.0,
          top: 150.0,
          child: ButtonTheme(
            minWidth: 60.0,
            height: 115.0,
            child: RaisedButton(
              onPressed: (){
                setState(() => tableSixOpen = !tableSixOpen);
                if (tableSixOpen == false) {
                  tableTimerSix.start();
                }
                else if (tableSixOpen == true){
                  tableTimerSix.stop();
                  tableTime.add(tableTimerSix.elapsed.inSeconds);
                  tableTimerSix.reset();
                }
              },
              child: Text('8'),
              color: tableSixOpen ? Colors.greenAccent: Colors.redAccent,
            )
          )
        ),
          new Positioned(
            //table 7
            left: 130.0,
            top: 300.0,
            child: ButtonTheme(
              minWidth: 90.0,
              height: 90.0,
              child: RaisedButton(
                onPressed: (){
                  setState(() => tableSevenOpen = !tableSevenOpen);
                  if (tableSevenOpen == false) {
                    tableTimerSeven.start();
                  }
                  else if (tableSevenOpen == true){
                    tableTimerSeven.stop();
                    tableTime.add(tableTimerSeven.elapsed.inSeconds);
                    tableTimerSeven.reset();
                  }
                },
                child: Text('6'),
                color: tableSevenOpen ? Colors.greenAccent: Colors.redAccent,
              )
            )
          ),
          new Positioned(
            //table 8
            left: 240.0,
            top: 30.0,
            child: ButtonTheme(
              minWidth: 60.0,
              height: 60.0,
              child: RaisedButton(
                onPressed: (){
                  setState(() => tableEightOpen = !tableEightOpen);
                  if (tableEightOpen == false) {
                    tableTimerEight.start();
                  }
                  else if (tableEightOpen == true){
                    tableTimerEight.stop();
                    tableTime.add(tableTimerEight.elapsed.inSeconds);
                    tableTimerEight.reset();
                  }
                },
                child: Text('4'),
                color: tableEightOpen ? Colors.greenAccent: Colors.redAccent,
              )
            )
          ),
          new Positioned(
            //table 9
            left: 240.0,
            top: 130.0,
            child: ButtonTheme(
              minWidth: 60.0,
              height: 60.0,
              child: RaisedButton(
                onPressed: (){
                  setState(() => tableNineOpen = !tableNineOpen);
                  if (tableNineOpen == false) {
                    tableTimerNine.start();
                  }
                  else if (tableNineOpen == true){
                    tableTimerNine.stop();
                    tableTime.add(tableTimerNine.elapsed.inSeconds);
                    tableTimerNine.reset();
                  }
                },
                child: Text('4'),
                color: tableNineOpen ? Colors.greenAccent: Colors.redAccent,
              )
            )
          ),
          new Positioned(
            //table 10
            left: 240.0,
            top: 230.0,
            child: ButtonTheme(
              minWidth: 60.0,
              height: 60.0,
              child: RaisedButton(
                onPressed: (){
                  setState(() => tableTenOpen = !tableTenOpen);
                  if (tableTenOpen == false) {
                    tableTimerTen.start();
                  }
                  else if (tableTenOpen == true){
                    tableTimerTen.stop();
                    tableTime.add(tableTimerTen.elapsed.inSeconds);
                    tableTimerTen.reset();
                  }
                },
                child: Text('4'),
                color: tableTenOpen ? Colors.greenAccent: Colors.redAccent,
              )
            )
          ),
        ],
      ),
    );
  }
}

//Execute Order 66
//Big agree