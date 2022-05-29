import 'package:days7/Pages/loginPage.dart';
import 'package:days7/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Pages/HomePage.dart';
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
         theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily
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