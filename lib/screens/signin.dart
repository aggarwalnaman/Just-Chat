import 'package:flutter/material.dart';
import 'package:just_chat/widgets/widgets.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: Container(
        alignment: Alignment.center,
              child: Container(
          padding: EdgeInsets.symmetric(horizontal : 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 40.0,),
              TextField(
                style: simpleTextStyle(),
                decoration: TextFieldDecoration("Email"),
              ),
              TextField(
                style: simpleTextStyle()  ,
                decoration: TextFieldDecoration("Password")
              ),
              SizedBox(height : 15,),
              Container(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal:16 ,vertical:8),
                  child: Text(
                    "Forgot Password !",
                    style: simpleTextStyle(),
                  ),
                ),
              ),
              SizedBox(height : 15,),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical:20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xff007EF4),
                      const Color(0xff2A75BC)
                    ]
                  ),
                  borderRadius: BorderRadius.circular(500)                
                ),
                child: Text("Sign In",style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                ),
              ),
              SizedBox(height : 15,),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical:20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(500)
                ),
                child: Text("Sign In With Google",style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                ),
              ),
              SizedBox(height:15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text(
                  "Don't have an account ? ",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                ),
                ),
                Text(
                  " Register now",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                ),
                )
              ],),
              // SizedBox(height:150),
            ],
          ),
        ),
      ),
    );
  }
}