
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import '../pages/home_page.dart';
import '../pages/landing_page.dart';

class UserManagement{

  Widget handleAuth(){
    return new StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, snapshot){
        if(snapshot.hasData){
          return HomePage();
        }
        return LandingPage();
      },
    );
  }

 SignOut(){
   FirebaseAuth.instance.signOut();
 }
 


}

