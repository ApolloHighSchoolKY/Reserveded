import 'package:flutter/material.dart';

void main() => runApp(Reserved());

class Reserved extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:"Reserved",
      home: new LoginButton()
       /*new Center( 

        child: new Scaffold(
          appBar: new AppBar(
            title: new Text("Reserve a table"),
          ),
          body: new HomeWidget(),
            ),

        ), */
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
 
 class LoginButton extends StatefulWidget{
   @override
    LoginButtonState createState() => new LoginButtonState();

 }

 class LoginButtonState extends State<LoginButton>{
   @override
    Widget build(BuildContext context){
      return new Scaffold(
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  child: new Text("Login"),
                  color: Colors.red,
                  onPressed: null,

                )
              ],
            ),
          ),
        ),
      );

    }
 }