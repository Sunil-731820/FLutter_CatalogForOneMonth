import 'package:days9/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    moveToHome(context) async{
      await Navigator.pushNamed(context, MyRoutes.homePage);
      
    }

    moveToEmail(context) async{
      await Navigator.pushNamed(context, MyRoutes.emailMe);
    }

    moveToContact(context) async{
await Navigator.pushNamed(context, MyRoutes.emailMe);
    }

    moveToProfile(context) async{
      await Navigator.pushNamed(context, MyRoutes.contactMe);
    }

    moveToLogin(context) async {
      await Navigator.pushNamed(context, MyRoutes.loginPage);
    }
    //  final imageUrl =
        // "https://avatars.githubusercontent.com/u/12619420?s=460&u=26db98cbde1dd34c7c67b85c240505a436b2c36d&v=4";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Sunil Kumar Gupta"), 
                accountEmail: Text("SunilKumar@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("assets/images/sunil.jpg"),
                ),
              ),
            ),
           Material(
                 color: Colors.deepOrangeAccent,
                   borderRadius: BorderRadius.circular(12),
                      child: InkWell(
                         onTap: () => moveToHome(context),
                         child: ListTile(
                            leading: Icon(CupertinoIcons.home),
                            title: Text("Home ",style: TextStyle(fontSize: 20),),
                         )

                       ),


                ),
                SizedBox(height: 3,),
            Material(
                 color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(12),
                    child: InkWell(
                         onTap: () => moveToProfile(context),
                         child: ListTile(
                            leading: Icon(CupertinoIcons.profile_circled),
                            title: Text("Profile ",style: TextStyle(fontSize: 20),),
                         )

                       ),


                     ),
                     SizedBox(height: 3,),
                Material(
                       color: Colors.deepOrangeAccent,
                       borderRadius: BorderRadius.circular(12),
                       child: InkWell(
                         onTap: () => moveToContact(context),
                         child: ListTile(
                            leading: Icon(CupertinoIcons.info),
                            title: Text("contact Me ",style: TextStyle(fontSize: 20),),
                         )

                       ),
                     ),
                     SizedBox(height: 3,),
               Material(
                 color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(12),
                    child: InkWell(
                         onTap: () => moveToEmail(context),
                         child: ListTile(
                            leading: Icon(CupertinoIcons.archivebox),
                            title: Text("Email me",style: TextStyle(fontSize: 20),),
                         )

                       ),
                 ),
                  SizedBox(height: 3,),
            Material(
                 color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(12),
                    child: InkWell(
                         onTap: () => moveToLogin(context),
                         child: ListTile(
                            leading: Icon(CupertinoIcons.profile_circled),
                            title: Text("logOut ",style: TextStyle(fontSize: 20),),
                         )

                       ),


                     ),
          ],
        ),
      )
    );
  }
}