// ignore_for_file: prefer_const_constructors

import 'package:app_shop/screens/splash/components/default_button.dart';
import 'package:app_shop/screens/splash/splash_screen.dart';
import 'package:app_shop/size_config.dart';
import 'package:flutter/material.dart';

class BodyLogSuccess extends StatelessWidget {
  const BodyLogSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04,),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4,
          ),
        SizedBox(height: SizeConfig.screenHeight * 0.08,),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back to home", 
            press: (){
              Navigator.pushNamed(context, SplashScreen.routeName);
            }
            ),
        ),
        Spacer(),
      ],
    );
  }
}