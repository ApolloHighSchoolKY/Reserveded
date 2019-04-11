import 'package:flutter/material.dart';

class TileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: new Center(
            child: new Text("Employee Table"),
          ),
        ),
        body: new ListView.builder(
          itemBuilder: (BuildContext context, int index){
            return new StuffInTiles(listOfTiles[index]);
          },
          itemCount: listOfTiles.length,
        ),


      );
    }
}

class StuffInTiles extends StatelessWidget{
  final MyTile myTile;
  StuffInTiles(this.myTile);

@override
Widget build(BuildContext context){
  return _buildTiles(myTile);

}
 Widget _buildTiles(MyTile t) {
   if(t.children.isEmpty){
    return new ListTile(title: new Text(t.title));
 }
 
 return new ExpansionTile(
   key: new PageStorageKey<MyTile>(t),
   title: new Text(t.title),
   children: t.children.map(_buildTiles).toList(),
   );
  }
}

class MyTile{
  String title;
  List<MyTile> children;
  MyTile(this.title, [this.children = const <MyTile>[]]);
}

List<MyTile> listOfTiles = <MyTile>[
  new MyTile(
    'John',
    <MyTile>[
      new MyTile(
        'Ben'
      )
    ]
  )
];
