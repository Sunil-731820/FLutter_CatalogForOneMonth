import 'package:days9/utils/routes.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if(_formKey.currentState!.validate()){
      setState(() {
        changeButton = true;
      });
      await Future.delayed(
        Duration(seconds: 1),
      );
     await Navigator.pushNamed(context, MyRoutes.homePage);
     setState(() {
       changeButton = false;
     });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/login_image.png", fit: BoxFit.cover,),
                SizedBox(height: 20,),
               Text("Welcome To $name",
               style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
               SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 16 ,horizontal: 32),
                 child: Column(
                   children: [
                     TextFormField(
                       decoration: InputDecoration(
                         hintText: "Please Enter userName",
                         labelText: "UserName",
                       ),
                       validator: (value){
                         if(value!.isEmpty){
                           return "UserName can not be Empty";
                         }else{
                           return null;
                         }
                       },
                       onChanged: (value){
                        name = value;
                        setState(() {  
                        });
                      }, 
                     ),
                     TextFormField(
                       obscureText: true,
                       decoration: InputDecoration(
                         hintText: "Please Enter userName",
                         labelText: "UserName",
                       ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "passWord can not be Empty";
                        }else if (value.length<6){
                          return "passWord should be longer than 6";
                        }else {
                          return null;
                        }
                      }, 
                                          
                     ),
                     SizedBox(height: 20,),
                     Material(
                       color: Colors.deepOrangeAccent,
                       borderRadius: BorderRadius.circular(changeButton ? 50 :12),
                       child: InkWell(
                         onTap: () => moveToHome(context),
                         child: AnimatedContainer(
                           duration: Duration(seconds: 2),width: changeButton ? 50 :150,
                           height: 50,
                           alignment: Alignment.center,
                           child: changeButton ? Icon(Icons.done , color: Colors.white,):Text("Login"
                           ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                           ),

                       ),


                     )
                   ],
                 ),
                 
                 ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}