// ignore_for_file: prefer_const_constructors

import 'package:app_shop/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData theme(){
  return ThemeData(

        //scaffoldBackgroundColor: Colors.white,
        scaffoldBackgroundColor: Color.fromARGB(255, 31, 29, 54),
        fontFamily: "Muli",
        
        appBarTheme: appBarTheme(),

        textTheme: textTheme(),

        inputDecorationTheme: inputDecorationTheme(),

        visualDensity: VisualDensity.adaptivePlatformDensity,

  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            );
  
  return InputDecorationTheme(
            
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 18,),
            
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            border: outlineInputBorder,
              
          );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
        color: kPrimaryColor,
        elevation: 20,
        iconTheme: IconThemeData(color: Colors.black),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleTextStyle: TextStyle(
          color: Colors.black,
        ),
        centerTitle: true,
          
      );
}

TextTheme textTheme() {
  return TextTheme(
        bodyText1: TextStyle (color:  kTextColor),
        bodyText2: TextStyle (color: kTextColor),
      );
}