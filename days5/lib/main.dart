import 'dart:io';

import 'package:days5/pages/home_page.dart';
import 'package:days5/pages/login_page.dart';
import 'package:days5/pages/thirdPage.dart';
import 'package:days5/utils/MyRoutes.dart';
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
      debugShowCheckedModeBanner: false,
      title: "Material widgets",
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: "/",
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.homeRoute:(context) => HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
        MyRoutes.WelcomeToThirdPage:(context) => ThirdPage()
      },
    );
  }
}
