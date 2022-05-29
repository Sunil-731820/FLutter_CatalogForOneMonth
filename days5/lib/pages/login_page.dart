import 'package:days5/pages/home_page.dart';
import 'package:days5/utils/MyRoutes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple,
      child: SingleChildScrollView(
             child: Column(
          children: [
            Image.asset("assets/images/login_image.png",fit: BoxFit.cover,),
            SizedBox(height: 20,),
                Text("Welcome" ,
                  style: TextStyle(
                 fontSize: 20,fontWeight: FontWeight.bold
                ),
               ),
          SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter the UserName ",
                          labelText: "UserName"
                        ),
                      ),
                       TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter the UserName ",
                          labelText: "UserName"
                        ),
                      ),
                       SizedBox(height: 20,),
                       ElevatedButton(
                         child: Text("Login",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                         onPressed: (){
                           Navigator.pushNamed(context, MyRoutes.homeRoute);
                         },
                      )
                    ],
              ),  
            )

          ],
        ),
      ),
    );
  }
}