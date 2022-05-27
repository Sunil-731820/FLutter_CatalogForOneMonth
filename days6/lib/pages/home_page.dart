import 'package:days6/utils/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body:ListView(
        children: [
            Padding(
              padding:const EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text("hello Conatiner 1"),
                  ),
                  ElevatedButton(
                    child: 
                    Text("back"),
                    onPressed: (){
                      Navigator.pushNamed(context, MyRoute.loginPage);
                    },)
                ],
              ),
           )
        ],
      ),
      drawer: Drawer(),
    );
  }
}