import 'package:flutter/material.dart';
class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome to Third Page",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
      ),
      ),
      body: Center(
        child: Container(
          child: Text("Hello third Pages"),
        ),
      ),
    );
  }
}