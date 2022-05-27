import 'package:days4/widgets/themes.dart';
import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MyApp());
}
 
 class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode:ThemeMode.light,
      debugShowCheckedModeBanner: false,
     theme: MyTheme.lightTheme(context),
     darkTheme: MyTheme.darkTheme(context),
    );
  }
}