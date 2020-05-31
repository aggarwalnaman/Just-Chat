import 'package:flutter/material.dart';
import 'package:just_chat/widgets/widgets.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

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
                controller: username,
                style: simpleTextStyle()  ,
                decoration: textFieldDecoration("Username")
              ),
              TextField(
                controller: email,
                style: simpleTextStyle(),
                decoration: textFieldDecoration("Email"),
              ),
              TextField(
                controller: password,
                style: simpleTextStyle()  ,
                decoration: textFieldDecoration("Password")
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
                child: Text("Sign Up",style: TextStyle(
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
                child: Text("Sign Up With Google",style: TextStyle(
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
                  "Already have account? ",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                ),
                ),
                Text(
                  " Sign In",
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