import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
        body: Container(
          width: double.infinity,
          height: 200,
          color: Colors.purple,
          child: Container(
            width: 50,
            height: 100,
            color: Colors.redAccent,
            child: Center(
              child: Text("This is the container ",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),
        ),
        
      ),
      
      
    );
    
  }
}