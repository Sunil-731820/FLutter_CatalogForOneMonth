import 'package:days14/pages/home_page.dart';
import 'package:days14/pages/login_page.dart';
import 'package:days14/utils/routes.dart';
import 'package:days14/widgets/theme.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: "/",
      routes: {
        "/":(context) => LoginPage(),
        MyRoute.loginPage :(context) => LoginPage(),
        MyRoute.homePage:(context) => HomePage()
      },
    );
  }
}