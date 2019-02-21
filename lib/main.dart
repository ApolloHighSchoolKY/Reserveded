import 'package:flutter/material.dart';
import './pages/home_page.dart';

void main() => runApp(Reserved());

class Reserved extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:"Reserved",
      home: new HomePage(

      ),
       /*new Center( 

        child: new Scaffold(
          appBar: new AppBar(
            title: new Text("Reserve a table"),
          ),
          body: new HomeWidget(),
            ), //hello

        ), */
       );
      

    }
}


class HomeWidget extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
  
    }


 
 