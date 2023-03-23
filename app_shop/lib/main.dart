// ignore_for_file: prefer_const_constructors

import 'package:app_shop/route.dart';
import 'package:app_shop/screens/splash/splash_screen.dart';
import 'package:app_shop/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      theme: theme(),
    
    //home: SplashScreen(),
    initialRoute: SplashScreen.routeName,
    routes: routes,
    );
  }
}



