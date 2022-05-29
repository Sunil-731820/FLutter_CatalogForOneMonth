
import 'package:days6/pages/home_page.dart';
import 'package:days6/pages/login_page.dart';
import 'package:days6/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App Widgets ",
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: "/",
      routes: {
        "/" :(context) => LoginPage(),
        MyRoute.loginPage :(context) => LoginPage(),
        MyRoute.homePage :(context) => HomePage(),
      },
    );
  }
}