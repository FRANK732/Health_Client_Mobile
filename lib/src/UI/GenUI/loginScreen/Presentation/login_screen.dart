// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_field, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:health_moble_client/core/Utils/showSnakBAr.dart';
import 'package:health_moble_client/core/constant/TColors.dart';
import 'package:health_moble_client/core/constant/TImages.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Presentation/bloc/bloc_bloc.dart';
import 'package:health_moble_client/src/widget/custom_Image_View.dart';
import 'package:health_moble_client/src/widget/custom_elevated_button.dart';
import 'package:health_moble_client/src/widget/custom_textButton.dart';
import 'package:health_moble_client/src/widget/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  Widget _icon = FaIcon(FontAwesomeIcons.eyeSlash);

  void init() {
    _username.dispose();
    _password.dispose();
  }

  void _login() {
    if (_formKey.currentState?.validate() ?? false) {
      BlocProvider.of<LoginBloc>(context).add(
          LoginButtonPressed(email: _username.text, password: _password.text));
    }
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
      _icon = _obscureText
          ? FaIcon(FontAwesomeIcons.eyeSlash)
          : FaIcon(FontAwesomeIcons.eye);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: BlocListener<LoginBloc, LoginState>(
              listener: (context, state) {
                if (state is LoginError) {
                  ShowToast.showToast("Login Failed", TColors.red700);
                } else if (state is LoginSucces) {
                  ShowToast.showToast("Login Succes", TColors.green800);
                }
              },
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(TSizes.md.w),
                  child: Column(
                    children: [
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: TImages.loginImg,
                              width: TSizes.imageWidth,
                              height: TSizes.imageHeight,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: TSizes.md.h,
                              width: TSizes.md.w,
                            ),
                            Text("Enter your login Detatils"),

                            // SizedBox(height: TSizes.md.h),
                          ],
                        ),
                      ),
                      Form(key: _formKey, child: _buildLoginForm(context)),
                      SizedBox(height: TSizes.md.h),
                      CustomElevatedButton(text: "login", onPressed: _login),
                      SizedBox(height: TSizes.md.h),
                      _footer(context),
                    ],
                  ),
                ),
              ))),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: TSizes.md.h),
        CustomTextField(
          controller: _username,
          readonly: false,
          obscureText: false,
          labelText: "Username/Phone",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your username';
            }
            return null;
          },
        ),
        SizedBox(height: TSizes.md.h),
        CustomTextField(
          suffixIcon: IconButton(
              onPressed: _togglePasswordVisibility,
              iconSize: TSizes.iconXSmall,
              icon: _icon),
          controller: _password,
          readonly: false,
          obscureText: true,
          labelText: "Password",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            return null;
          },
        ),
        SizedBox(height: TSizes.ms.h),
        CustomTextButton(
          text: "Reset Password",
          onPressed: () {
            Get.toNamed("/forgot_password_screen");
          },
          alignment: Alignment.centerRight,
        ),
      ],
    );
  }

  Widget _footer(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Emergency?",
            ),
            CustomTextButton(text: "Contact", onPressed: () {})
          ],
        ),
        SizedBox(height: TSizes.ms.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account?",
            ),
            CustomTextButton(
                text: "Sign Up",
                onPressed: () {
                  Get.toNamed("/registration_screen");
                })
          ],
        )
      ],
    );
  }
}
