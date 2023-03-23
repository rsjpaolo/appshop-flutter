// ignore_for_file: prefer_const_constructors, avoid_returning_null_for_void, curly_braces_in_flow_control_structures

import 'package:app_shop/constants.dart';
import 'package:app_shop/screens/forgot_password/forgotpass_screen.dart';
import 'package:app_shop/screens/login_success/logsuccess_screen.dart';
import 'package:app_shop/screens/sign_in/sign_in_components/custom_suffix_icon.dart';
import 'package:app_shop/screens/sign_in/sign_in_components/form_error.dart';
import 'package:app_shop/screens/splash/components/default_button.dart';
import 'package:app_shop/size_config.dart';
import 'package:flutter/material.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  bool hidden = true;
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? email;
  String? password;
  bool? remember = false;

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }



  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          //SizedBox(height: getProportionateScreenHeight(20),),
         
          emailFormField(),
          
          SizedBox(height: getProportionateScreenHeight(20),), 
          
          passwordFormField(),
 
          FormError(errors: errors),
          
          SizedBox(height: getProportionateScreenHeight(20),),
          
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Checkbox(
                  value: remember, 
                  activeColor: kPrimaryColor,
                  checkColor: Colors.white,
                  
                  onChanged: (value) {
                    setState(() {
                      remember = value!;
                    });
                  },
                  ),
              ),
                Text("Remember me", style: TextStyle(
                  color: Colors.white,
                ),
              ),
                
                Spacer(),
                
                GestureDetector(
                  onTap: () => Navigator.popAndPushNamed(context, ForgotPasswordScreen.routeName),
                  child: Text(
                    "Forgot Password", 
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                  ),
                              ),
                ),
            ],
          ),

          SizedBox(height: getProportionateScreenHeight(20),),
          DefaultButton(
            text: "LOGIN", 
            press: () {
              if(_formKey.currentState!.validate()){
                _formKey.currentState!.save();

                FocusManager.instance.primaryFocus?.unfocus();
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);

              }
            }
            ),
        ],     
      ),
    );
  }

  TextFormField passwordFormField() {
    return TextFormField(
            style: TextStyle(
              color: Colors.white,
            ),
            obscureText: hidden,
            onSaved: (newValue) => password = newValue,

            onChanged: (value){
              if(value.isNotEmpty || value.length >= 8 ){
                removeError(error: kShortPassError);
                removeError(error: kPassNullError);
                }
            return null;
            },

            validator: (value){
            if(value!.isEmpty ){
              addError(error: kPassNullError);
              return "";
              } 
            else if(value.length < 8 ){
              addError(error: kShortPassError);
              return "";
              }
            return null;
            },

            decoration: InputDecoration(
              labelText: "Password",
              labelStyle: (
              TextStyle(
                color: kPrimaryTextColor
              )
            ),
              hintText: "Enter your Password",
              hintStyle: (
              TextStyle(
                color: kPrimaryTextColor
              )
            ),
              
              suffixIcon: GestureDetector(
                //borderRadius: BorderRadius.circular(50.0),
                onTap: (){
                  setState(() {
                    hidden = !hidden;
                  });
                },
                child: customSuffixIcon(
                  svgIcon: "assets/icons/Lock.svg",
                  
                  //col: Colors.red,
                ),
              ),
            ),
          );
    
  }

  TextFormField emailFormField() {
    return TextFormField(
          style: TextStyle(
              color: Colors.white,
            ),
          keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => email = newValue,
          
          onChanged: (value) {
            if(value.isNotEmpty || emailValidatorRegExp.hasMatch(value)){
              removeError(error: kEmailNullError);
              removeError(error: kInvalidEmailError);
              }
              return null;
              },

          validator: (value){
            if(value!.isEmpty){
              addError(error: kEmailNullError);
              return "";
              } 
            else if(!emailValidatorRegExp.hasMatch(value)){
              addError(error: kInvalidEmailError);
              return "";
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
        );
  }
}