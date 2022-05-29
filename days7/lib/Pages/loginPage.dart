import 'package:days7/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
        setState(() {
          changeButton = true;
        });
        await Future.delayed(
          Duration(seconds: 1));
          await Navigator.pushNamed(context, MyRoute.homePage);
          setState(() {
            changeButton = false;
          });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/login_image.png",fit: BoxFit.cover),
              SizedBox(height: 20,),
              Text("Welcome To $name ",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [

                    // first Form Feild
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter UserName",
                            labelText: "userName",
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "UserName cann't be Null";
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

                    // Second form field
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter PassWord",
                        labelText: "passWord"
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "password can not be Empty";
                        }else if(value.length<6){
                          return "password should be more than 6 digits longer";
                        }else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 20,),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: (){
                          moveToHome(context);
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton ?
                          Icon(Icons.done,color: Colors.white,)
                          :Text("Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),
                        )
                      ),
                      ),
                    )

                  ],
                ),
              )
            ],
          )
        ),
       
      ),
    );
  }
}