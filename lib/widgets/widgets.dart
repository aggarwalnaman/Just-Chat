import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context){
  return AppBar(
    title: Text("Just Chat"),
  );
}

InputDecoration TextFieldDecoration(String hintText){
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(
      color:Colors.white54
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white)
    )
  );
}

TextStyle simpleTextStyle(){
  return TextStyle(
    fontSize: 14,
    color: Colors.white,
  );
}