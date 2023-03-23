// ignore_for_file: prefer_const_constructors

import 'package:app_shop/screens/sign_in/sign_in_components/body_sign_in.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SIGN IN"),
      ),
      body: BodySignIn(),

    );
  }
}