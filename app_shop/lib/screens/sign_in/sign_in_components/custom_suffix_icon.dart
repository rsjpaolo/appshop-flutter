// ignore_for_file: camel_case_types

import 'package:app_shop/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class customSuffixIcon extends StatefulWidget {
  const customSuffixIcon({
    Key? key,
    required this.svgIcon,
    //this.col = Colors.orange,
  }) : super(key: key);

  final String svgIcon;
  //final Color col;

  @override
  State<customSuffixIcon> createState() => _customSuffixIconState();
}

class _customSuffixIconState extends State<customSuffixIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        ),
      child: SvgPicture.asset(
        widget.svgIcon,
        height: getProportionateScreenWidth(18), 

        ),
    );
  }
}