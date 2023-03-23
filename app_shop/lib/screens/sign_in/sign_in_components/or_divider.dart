// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:app_shop/constants.dart';
import 'package:app_shop/size_config.dart';
import 'package:flutter/material.dart';

class orDivider extends StatelessWidget {
  const orDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(20)),
      margin: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(10)),
      width: getProportionateScreenWidth(300),
      child: Row(
        children: [
          buildDivider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
            child: Text(
              "OR",
              style: TextStyle(
                color: kPrimaryColor, 
                fontWeight: FontWeight.w600
                ),
              ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
          child: Divider(
            color: Colors.white,
            height: 1.5,
            ),
        );
  }
}