// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app_shop/constants.dart';
import 'package:app_shop/screens/sign_in/sign_in_screen.dart';
import 'package:app_shop/screens/splash/components/default_button.dart';
import 'package:app_shop/screens/splash/components/splash_content.dart';
import 'package:app_shop/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "title": "LOREM",
      "text": "Welcome to LOREM, Let's Shop!",
      "image": "assets/images/splash_1.png",
    },

    {
      "title": "SHOP",
      "text": "We help people connect with store \n around United States of America.",
      "image": "assets/images/splash_2.png",
    },
    
    {
      "title": "ENJOY",
      "text": "We show the easy way to shop. \nJust stay at home with us.",
      "image": "assets/images/splash_3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                title: splashData [index] ["title"]!,
                text: splashData [index] ["text"]!,
                image: splashData [index] ["image"]!,
                ),
              ),
            ),

            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, 
                          (index) => buildDot(index: index),
                          ),   
                    ),
                    Spacer(flex: 4,),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
           
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
                  duration: kAnimationDuration,
                  margin: EdgeInsets.only(right: 5,),
                  height: 6,
                  width: currentPage == index ? 30 : 6,
                  decoration: BoxDecoration(
                    color: currentPage == index ? kPrimaryColor : Color.fromARGB(255, 255, 0, 0),
                    borderRadius: BorderRadius.circular(3),
                  ),
                );
  }
}



