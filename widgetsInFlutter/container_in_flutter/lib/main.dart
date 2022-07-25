import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container ",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome To App",
          style: TextStyle(fontSize: 12),
        ),
      ),
      body: Container(
        width :double.infinity,
        height: 100,
        color: Colors.purple,
        child: Text("Welcome to Container ",
        style: TextStyle(fontSize: 20),),
      ),
    ),
    
    );
  }
}
