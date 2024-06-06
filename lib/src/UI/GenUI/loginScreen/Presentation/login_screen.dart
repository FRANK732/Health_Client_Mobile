// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_field, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:health_moble_client/core/constant/TImages.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';
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
      // Perform login action
      final username = _username.text;
      final password = _password.text;
      // Add your login logic here
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
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(TSizes.md.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: TImages.loginImg,
                  width: TSizes.imageWidth,
                  height: TSizes.imageHeight,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: TSizes.md.h),
                Text("Enter your login Detatils"),
                SizedBox(height: TSizes.md.h),
                _buildLoginForm(context),
                SizedBox(height: TSizes.md.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
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
            onPressed: () {},
            alignment: Alignment.centerRight,
          ), //TODOD Password Reset

          SizedBox(height: TSizes.ms.h),
          CustomElevatedButton(text: "Login", onPressed: _login),
          SizedBox(height: TSizes.md.h),
          _footer(context),
        ],
      ),
    );
  }

  Widget _footer(BuildContext context) {
    return Center(
      child: Column(
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
      ),
    );
  }
}
