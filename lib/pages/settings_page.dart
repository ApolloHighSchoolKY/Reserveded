import 'dart:io';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title:  new Text("Settings"),
          ),
        
        body: new Container(
           width: 190.0,
           height: 190.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
              fit: BoxFit.fill,
              image: new NetworkImage(
                 "http://apollopltw.weebly.com/uploads/3/7/7/0/37708467/5799917.jpg?140"
                  )
                )
              )
          ),
        );
    }
}