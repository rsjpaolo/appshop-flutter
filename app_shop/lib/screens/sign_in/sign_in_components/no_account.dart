// ignore_for_file: camel_case_types

import 'package:app_shop/constants.dart';
import 'package:app_shop/size_config.dart';
import 'package:flutter/material.dart';

class noAccountText extends StatelessWidget {
  const noAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(
            color: Colors.white,
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        Text(
          "Sign Up",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            color: kPrimaryTextColor,
          ),
        ),
      ],
    );
  }
}

