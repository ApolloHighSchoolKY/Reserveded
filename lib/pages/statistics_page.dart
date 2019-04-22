import 'package:flutter/material.dart';
//import 'home_page.dart';

List<int> testList = [34, 32, 42, 31, 32, 35, 35, 34, 42, 31];
double average = 0;

void main(List<String> args) {
  for (int i = 0; i<testList.length; i++){
    average += testList.elementAt(i);
  }
  average = average / (testList.length + 1);
  print ("$average");
}
class StatisticsPage extends StatefulWidget{
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text('Welcome, Trevor'),),
      body: new Column(
        children: <Widget>[
          new Text('$average'),
          new RaisedButton(
            //onPressed: getTableAverage,
          )
        ], 
      ),
    );
  }
  /*Future<void> getTableAverage(){
    for (int i = 0; i<testList.length; i++){
      average += testList.elementAt(i);
    }
    average = average / testList.length;
    print ("kill me");
    print ('$average');
  }*/
}