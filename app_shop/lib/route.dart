// ignore_for_file: prefer_const_constructors

import 'package:app_shop/screens/forgot_password/forgotpass_screen.dart';
import 'package:app_shop/screens/login_success/logsuccess_screen.dart';
import 'package:app_shop/screens/sign_in/sign_in_screen.dart';
import 'package:app_shop/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName:(context) => LoginSuccessScreen(),
};