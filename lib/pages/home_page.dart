import 'package:flutter/material.dart';
import './other_page.dart';

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
              accountName: new Text("Brother Montgomery"),
              accountEmail: new Text("Brother@gmail.com"),
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
              title: new Text("First page"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder:(BuildContext context) => new OtherPage("First Page"))) ,
            ),

             new ListTile(
              title: new Text("Second page"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder:(BuildContext context) => new OtherPage("Second Page"))) ,
              ),

              new Divider(),

              new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.cancel),
              onTap: () => Navigator.of(context).pop(),
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