import 'package:days15/pages/home_page.dart';
import 'package:days15/pages/login_page.dart';
import 'package:days15/utils/routes.dart';
import 'package:days15/widgets/theme.dart';
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
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoute.loginPage,
      routes: {
        "/" :(context) => LoginPage(),
        MyRoute.homePage:(context) => HomePage(),
        MyRoute.loginPage:(context) => LoginPage()
      },
    );
  }
}