import 'package:flutter/material.dart';
class EmailMe extends StatelessWidget {
  const EmailMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome to Email page"),
      ),
      body: Column(
        children: [
          Text("Hello parts1"),
          Text("Hello2"),
        ],
      ),
    );
  }
}