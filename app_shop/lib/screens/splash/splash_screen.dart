// ignore_for_file: prefer_const_constructors

import 'package:app_shop/screens/splash/components/body_splash.dart';
import 'package:app_shop/size_config.dart';
import 'package:flutter/material.dart'; 
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),

    );
  }
}