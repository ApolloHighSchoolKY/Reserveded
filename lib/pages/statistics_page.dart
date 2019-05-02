import 'package:flutter/material.dart';
import 'table_page.dart';

List<int> testList = [34, 32, 42, 31, 32, 35, 35, 34, 42, 31];
double average = 0;

class StatisticsPage extends StatefulWidget{
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage>{
  @override
  void initState(){
    print ("$tableTime");
    for (int i = 0; i<tableTime.length; i++){
      average += tableTime.elementAt(i);
    }
    average = average / (tableTime.length);
    average = average.truncateToDouble();
  }
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text('Welcome, Trevor'),),
      body: new Column(
        children: <Widget>[
          new Text('Average Table Time: ' + '$average'),
        ], 
      ),
    );
  }
}