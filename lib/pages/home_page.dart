import 'package:flutter/material.dart';
import './other_page.dart';
import 'table_page.dart';
import './employee_page.dart';

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

           new ListTile(
              title: new Text("Employees"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TablePage())),
            ),
            
            new Divider(),

            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.arrow_left),
              onTap: () => Navigator.of(context).pop(),
            ),

            new ListTile(
              title: new Text("Sign Out"),
              trailing: new Icon(Icons.cancel),
              onTap: (){
                UserManagement().SignOut();
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