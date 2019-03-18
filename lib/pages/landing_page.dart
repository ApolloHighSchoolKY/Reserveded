import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home_page.dart';

final GlobalKey<FormState> formKey = GlobalKey<FormState>();
String _email, _password;

class LandingPage extends StatefulWidget{
  @override
  _LandingPageState createState() => new _LandingPageState();
}
/* This widget is the design of the first page*/
class _LandingPageState extends State<LandingPage>{
@override
  Widget build(BuildContext context){
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 100.0),
            ),
            TextFormField(
              style: new TextStyle(color: Colors.black, fontSize: 20.0),
              validator: (input) {
                if(input.isEmpty){
                  return "Please enter an email";
                }
              },
              onSaved: (input) => _email = input,
              decoration: InputDecoration(
                hintText: 'Enter employee email'
              ),
           ),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
            ),
            TextFormField(
              style: new TextStyle(color: Colors.black, fontSize: 20.0),
              obscureText: true,
              validator: (input) {
                if(input.isEmpty){
                  return "Please enter a password";
                }
              },
              onSaved: (input) => _password = input,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                fillColor: Colors.black
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
            ),
            RaisedButton(
              child: Text("Login"),
              color: Colors.blueAccent,
              onPressed: checkLogin,
            )    
        ],
      )
    );
  }
  Future<void> checkLogin() async{
  //This method uses Firebase to check if the user successfully logged in
    final formState = formKey.currentState;
    if(formState.validate()){
      formState.save();
      try{
        FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        print("Login Successful");
      } catch(e){
        print(e.message);
      }
    }
  }
}