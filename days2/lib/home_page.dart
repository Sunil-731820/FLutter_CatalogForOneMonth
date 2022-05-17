import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "GFG";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("days 2 parts of flutter"),
     ),
     body: Center(
       child: Container(
         child: Text(
           "welcome to my flutter Blog $days and Flutter website is $name"
         ),
       ),
     ),
    );
  }
}
