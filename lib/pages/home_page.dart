import 'package:flutter/material.dart';
import 'statistics_page.dart';
import 'table_page.dart';
import 'employee_page.dart';

List<int> averageTable = [];

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

            new UserAccountsDrawerHeader(
              //style: new TextStyle(color: Colors.black),
              accountName: new Text("Brother Montgomery",
                style: TextStyle(color: Colors.black.withOpacity(1.0)),
              ),
              accountEmail: new Text("Brother@gmail.com",
                style: TextStyle(color: Colors.black.withOpacity(1.0)),
              ),
              currentAccountPicture: new GestureDetector(
                onTap: () => print("test"),
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage("http://apollopltw.weebly.com/uploads/3/7/7/0/37708467/5799917.jpg?140"),
                ),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage("https://www.freepik.com/premium-vector/red-black-arrow-overlap-gray-background_2916579.htm")

                )
              )
            ),
            new ListTile(
              title: new Text("Resturant Floor"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TablePage())),
            ),

            //This will allow for the Manager to get the the employee page
            //Manager Only
           new ListTile(
              title: new Text("Employees"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => EmployeePage())),
            ),

            //This will allow for the Manager to get the the statistics page
            //Manager Only
            new ListTile(
              title: new Text("Statistics"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => StatisticsPage())),
            ),

            //A messaging platform for communication between workers
            //Open to all people
           new ListTile(
              title: new Text("Messages"),
              trailing: new Icon(Icons.arrow_upward),
              //onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TablePage())),
            ),

            
            new Divider(),

            //Will close the drawer 
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.arrow_left),
              onTap: () => Navigator.of(context).pop(),
            ),

            new Divider(),

            //Signs user out of the app
            new ListTile(
              title: new Text("Sign Out"),
              trailing: new Icon(Icons.cancel),
              onTap: (){
                
              }
            ),
          ],
        ),
      ),
      body: new Center(
        child: new Text("HomePage"),
      ),
    );
  }
}