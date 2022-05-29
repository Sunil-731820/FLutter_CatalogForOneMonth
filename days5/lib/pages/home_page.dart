import 'package:days5/utils/MyRoutes.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Pages"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text("Welcome To 30 days Of flutter",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ElevatedButton(
                child: Text("back"),
                onPressed: (){
                  Navigator.pushNamed(context, MyRoutes.loginRoute);
                },
              ),
              ElevatedButton( 
                child: Text("Go To third Page"),
                onPressed: (){
                  Navigator.pushNamed(context, MyRoutes.WelcomeToThirdPage);
                },)
            ],
          ),
        )
      ),
    );
  }
}