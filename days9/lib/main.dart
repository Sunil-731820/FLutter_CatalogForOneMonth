
import 'package:days9/pages/Email_me.dart';
import 'package:days9/pages/contactPage.dart';
import 'package:days9/pages/home_page.dart';
import 'package:days9/pages/login_page.dart';
import 'package:days9/utils/routes.dart';
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
     themeMode:  ThemeMode.light,
     theme: ThemeData(
       primarySwatch: Colors.deepPurple,
       fontFamily: GoogleFonts.lato().fontFamily,
     ),
     darkTheme: ThemeData(
       brightness: Brightness.dark
     ),
     debugShowCheckedModeBanner: false,
     initialRoute: "/",
     routes: {
       "/" :(context) => LoginPage(),
       MyRoutes.loginPage:(context) => LoginPage(),
       MyRoutes.homePage :(context)=> HomePage(),
       MyRoutes.emailMe :(context) => EmailMe(),
       MyRoutes.contactMe:(context) => ContactPage()
     },
    );
  }
}