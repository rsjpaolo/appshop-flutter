// ignore_for_file: prefer_const_constructors

import 'package:app_shop/screens/login_success/logsuccess_components/body_logsuccess.dart';
import 'package:flutter/material.dart ';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";

  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
      ),
      body: BodyLogSuccess(),
    );
  }
}