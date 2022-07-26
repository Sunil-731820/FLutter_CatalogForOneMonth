
import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Scaffold",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Scaffold",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
           print("Add is Pressed");
        },
        child: Text("add",
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green
              ),
              child: Text("Welcome to My Drawer Haeder",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            ListTile(
              title: Text("Item 1 "),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Item 2 is "),
              leading: Icon(Icons.delete),
            ),
            ListTile(
              title: Text("Item 3 is "),
              leading: Icon(Icons.access_alarm),
            ),
            ListTile(
              title: Text("Item 4 is "),
              leading: Icon(Icons.ac_unit),
            ),
            ListTile(
              title: Text("Item 4 is "),
              leading: Icon(Icons.ac_unit),
            )
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.purpleAccent,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
          
        ],
        ),
     ),
    );
    
  }
}