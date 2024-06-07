// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_moble_client/core/constant/TImages.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';
import 'package:health_moble_client/src/UI/GenUI/ConfirmEmailScreen/Presentation/widget/otp_field.dart';
import 'package:health_moble_client/src/widget/custom_Image_View.dart';
import 'package:health_moble_client/src/widget/custom_circle_back.dart';
import 'package:health_moble_client/src/widget/custom_elevated_button.dart';
import 'package:health_moble_client/src/widget/custom_textButton.dart';

class ConfirmEmail extends StatefulWidget {
  const ConfirmEmail({super.key});

  @override
  State<ConfirmEmail> createState() => _ConfirmEmailState();
}

class _ConfirmEmailState extends State<ConfirmEmail> {
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
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: EdgeInsets.all(TSizes.md.w),
          child: Column(
            children: [
              Align(alignment: Alignment.topLeft, child: CircleBack()),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: TImages.verify,
                        width: TSizes.imageWidth,
                        height: TSizes.imageHeight,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: TSizes.md.h),
                      Text("OTP sent to address: ha***122@gmail.com"),
                      SizedBox(height: TSizes.md.h),
                      _buildEmail(context),
                    ],
                  ),
                ),
              ),
              SizedBox(height: TSizes.md.h),
              CustomElevatedButton(text: "Confirm OTP", onPressed: _login),
              SizedBox(height: TSizes.md.h),
              _footer(context),
            ],
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
          SizedBox(height: TSizes.ms.h),
          OTPInput(onCompleted: (val) {}),
        ],
      ),
    );
  }

  Widget _footer(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Emergency?"),
              CustomTextButton(text: "Contact", onPressed: () {}),
            ],
          ),
          SizedBox(height: TSizes.ms.h),
        ],
      ),
    );
  }
}
