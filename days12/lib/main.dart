import 'package:days12/pages/home_page.dart';
import 'package:days12/pages/login_page.dart';
import 'package:days12/utils/routes.dart';
import 'package:days12/widgets/theme.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginPage,
      routes: {
        MyRoutes.loginPage: (context) => LoginPage(),
        MyRoutes.homePage: (context) => HomePage(),
      },
    );
  }
}
