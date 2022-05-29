import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
class HomePage extends StatelessWidget {

  String name = "Sunil";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Home Page",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body:Center(
        child: Text("Welcome back $name",
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      drawer: MyDrawer(),
    );
  }
}