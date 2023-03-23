// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_print, avoid_returning_null_for_void, prefer_const_literals_to_create_immutables

import 'package:app_shop/constants.dart';
import 'package:app_shop/screens/sign_in/sign_in_components/no_account.dart';
import 'package:app_shop/screens/sign_in/sign_in_components/or_divider.dart';
import 'package:app_shop/screens/sign_in/sign_in_components/sign_form.dart';
import 'package:app_shop/screens/sign_in/sign_in_components/social_card.dart';
import 'package:app_shop/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodySignIn extends StatelessWidget {
  const BodySignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
           ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.02,),
                Text(
                  "Welcome Back", 
                  style: TextStyle(
                    color: kPrimaryTextColor, 
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                Text(
                  "Sign in with your Email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kPrimaryTextColor,
                  ),
                  ),
                SizedBox(height: SizeConfig.screenHeight * 0.08,),
                
                SignForm(),
                
                SizedBox(height: SizeConfig.screenHeight * 0.03,),
                
                orDivider(),
                //SizedBox(height: SizeConfig.screenHeight * 0.02,),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
                
                noAccountText(),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}





