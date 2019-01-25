import 'package:flutter/material.dart';
//import 'table_page.dart';
import 'package:firebase_core/firebase_core.dart';

final restaurantController = TextEditingController();
final employeeController = TextEditingController();

/* This widget is the design of the first page*/
class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Material(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(top: 100.0),
          ),
          new TextFormField(
            style: new TextStyle(color: Colors.black, fontSize: 20.0),
            controller: restaurantController,
            decoration: InputDecoration(
              hintText: 'Enter restaurant code'
            ),
          ),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
          ),
          new TextFormField(
            style: new TextStyle(color: Colors.black, fontSize: 20.0),
            controller: employeeController,
            decoration: InputDecoration(
              hintText: 'Enter your employee code',
              fillColor: Colors.black
            ),
          ),
          new Container(
            margin: const EdgeInsets.only(top: 20.0),
          ),
          new FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              checkLogin(restaurantController.text, employeeController.text);
            },
           )
        ],
      ),
    );
  }
}

void checkLogin(String restaurantCode, String employeeCode){
  if(restaurantCode=="012345"){
    if(employeeCode=="0123"){
      print("Login Successful");
    }
  }
}