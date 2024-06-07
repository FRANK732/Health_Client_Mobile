// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_field, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:health_moble_client/core/constant/TImages.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';
import 'package:health_moble_client/src/UI/GenUI/ConfirmEmailScreen/Presentation/widget/otp_field.dart';
import 'package:health_moble_client/src/widget/custom_Image_View.dart';
import 'package:health_moble_client/src/widget/custom_elevated_button.dart';
import 'package:health_moble_client/src/widget/custom_textButton.dart';
import 'package:health_moble_client/src/widget/custom_text_field.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(TSizes.md.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: TImages.forgotpass,
                    width: TSizes.imageWidth,
                    height: TSizes.imageHeight,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: TSizes.md.h,
                    width: TSizes.md.w,
                  ),
                  Text("Enter your Email"),
                  SizedBox(height: TSizes.md.h),
                  _buildEmail(context),
                  SizedBox(height: TSizes.md.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmail(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextField(
            controller: _username,
            readonly: false,
            obscureText: false,
            labelText: "Email",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your emal';
              }
              return null;
            },
          ),
          SizedBox(height: TSizes.ms.h),
          CustomTextButton(
            text: "Send OTP",
            onPressed: () {},
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: TSizes.ms.h),
          OTPInput(
            onCompleted: (String value) {},
          ),
          // CustomTextField(
          //   controller: _username,
          //   readonly: false,
          //   obscureText: false,
          //   keyboardType: TextInputType.number,
          //   labelText: "OTP Code here...",
          //   validator: (value) {
          //     if (value == null || value.isEmpty) {
          //       return 'Please enter your emal';
          //     }
          //     return null;
          //   },
          // ),
          SizedBox(height: TSizes.md.h),
          CustomElevatedButton(text: "Confirm", onPressed: _login),
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
