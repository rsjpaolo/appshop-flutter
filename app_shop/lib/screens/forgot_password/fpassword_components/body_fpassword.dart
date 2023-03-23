// ignore_for_file: prefer_const_constructors, avoid_returning_null_for_void

import 'package:app_shop/constants.dart';
import 'package:app_shop/screens/sign_in/sign_in_components/custom_suffix_icon.dart';
import 'package:app_shop/screens/sign_in/sign_in_components/form_error.dart';
import 'package:app_shop/screens/sign_in/sign_in_components/no_account.dart';
import 'package:app_shop/screens/splash/components/default_button.dart';
import 'package:app_shop/size_config.dart';
import 'package:flutter/material.dart';

class BodyFPassword extends StatelessWidget {
  const BodyFPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04,),
              Text("Forgot Password",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(28),
                color: kPrimaryTextColor,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text(
                "Please enter your email and we will send you \na link to return to your account.",
                textAlign: TextAlign.center,
                ),
              
              SizedBox(height: SizeConfig.screenHeight * 0.1,),
      
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}


class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({Key? key}) : super(key: key);

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  List<String> errors = [];
  late String email;
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [ 
          TextFormField(
          style: TextStyle(
              color: Colors.white,
            ),
          keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => email = newValue!,
          
          onChanged: (value) {
            if(value.isNotEmpty && errors.contains(kEmailNullError)){
              setState(() {
              errors.remove(kEmailNullError);
            });
            } 
            else if(emailValidatorRegExp.hasMatch(value) && 
              errors.contains(kInvalidEmailError)){
              setState(() {
                errors.remove(kInvalidEmailError);
              });
            }
            return null;
          },

          validator: (value){
            if(value!.isEmpty && !errors.contains(kEmailNullError)){
              setState(() {
              errors.add(kEmailNullError);
            });
            } 
            else if(!emailValidatorRegExp.hasMatch(value) && 
              !errors.contains(kInvalidEmailError)){
              setState(() {
                errors.add(kInvalidEmailError);
              });
            }
            return null;
          },

          decoration: InputDecoration(
            
            labelText: "Email", 
            labelStyle: (
              TextStyle(
                color: kPrimaryTextColor
              )
            ),
            hintText: "Enter your Email",
            hintStyle: (
              TextStyle(
                color: kPrimaryTextColor
              )
            ),
            suffixIcon: customSuffixIcon(
              svgIcon: "assets/icons/Mail.svg",
              //col: Colors.black,
            ),
          ),
        ),
      SizedBox(height: getProportionateScreenHeight(20),),

      FormError(errors: errors),

      SizedBox(height: SizeConfig.screenHeight * 0.1,),
      
      DefaultButton(
        text: "Continue"
        , press: () {
          if(_formKey.currentState!.validate()){

          }
        }
        ),

      SizedBox(height: SizeConfig.screenHeight * 0.1,),

      noAccountText(),
      ],

      ),
    );
  }
}