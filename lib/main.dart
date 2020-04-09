import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layouts",
      //darkTheme: ThemeData(primaryColor: Colors.purple),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.teal,
        accentColor: Colors.grey,
        textTheme: Typography.whiteMountainView
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Building layouts with Flutter"),
        ),
        body: Center(
          child: Text(
            "Hello flutter layouts!",
            style: TextStyle(fontSize: 24.0),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.lightbulb_outline),
          onPressed: () => floatingButtonHandler(),
        ),
        persistentFooterButtons: <Widget>[
          IconButton(icon: Icon(Icons.add_comment), onPressed: null,),
          IconButton(icon: Icon(Icons.alarm_add), onPressed: null,),
          IconButton(icon: Icon(Icons.add_location), onPressed: null),
        ],
      ),
    );
  }

  void floatingButtonHandler(){
    print("You rang?");
  }
}
