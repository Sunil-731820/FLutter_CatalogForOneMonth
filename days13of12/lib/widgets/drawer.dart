import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://avatars.githubusercontent.com/u/12619420?s=460&u=26db98cbde1dd34c7c67b85c240505a436b2c36d&v=4";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Sunil Kumar Gupta"), 
                accountEmail: Text("sunil@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
              )
            ),

            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text("Home",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
              textScaleFactor: 1.2,),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.profile_circled),
                title: Text("Profile ",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,),
              ),
               ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email ",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
            )

          ],
        ),
      ),
      
    );
  }
}