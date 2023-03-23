// ignore_for_file: prefer_const_constructors

import 'package:app_shop/screens/forgot_password/fpassword_components/body_fpassword.dart';
import 'package:app_shop/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
          ),
          onTap: () {
            Navigator.popAndPushNamed(context, SignInScreen.routeName);
          },
      ),
        title: Text("Forgot Password"),
      ),
      body: BodyFPassword(),
    );
  }
}