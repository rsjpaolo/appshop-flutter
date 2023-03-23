// ignore_for_file: prefer_const_constructors

import 'package:app_shop/constants.dart';
import 'package:app_shop/size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key, 
    required this.text, 
    required this.image, 
    required this.title,
  }) : super(key: key);

  final String text, image, title;

  @override
  Widget build(BuildContext context) {
    return Column (
      children: [
        Spacer(),
        Text(
        title, style: TextStyle(
          fontSize: getProportionateScreenWidth(36),
          color: kPrimaryTextColor,
          fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text, style: TextStyle(
            color: kPrimaryTextColor,
          ),
          textAlign: TextAlign.center,
          
          ),
        Spacer(flex: 2,),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
          ),
      ],  
    );
  }
}