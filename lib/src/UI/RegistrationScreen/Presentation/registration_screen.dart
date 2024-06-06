// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:health_moble_client/core/constant/TImages.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';
import 'package:health_moble_client/src/widget/custom_Image_View.dart';
import 'package:health_moble_client/src/widget/custom_circle_back.dart';
import 'package:health_moble_client/src/widget/custom_dropdown.dart';
import 'package:health_moble_client/src/widget/custom_elevated_button.dart';
import 'package:health_moble_client/src/widget/custom_textButton.dart';
import 'package:health_moble_client/src/widget/custom_text_field.dart';
import 'package:health_moble_client/src/widget/label_checkBox.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _firstname = TextEditingController();
  final _lastname = TextEditingController();
  final _gender = TextEditingController();
  final _dob = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _password = TextEditingController();
  final _confirmpass = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? initgender = "";
  void init() {
    _firstname.dispose();
    _confirmpass.dispose();
    _lastname.dispose();
    _gender.dispose();
    _dob.dispose();
    _phone.dispose();
    _email.dispose();
    _password.dispose();
  }

  void _login() {
    if (_formKey.currentState?.validate() ?? false) {
      // Perform login action
      final username = _firstname.text;
      final password = _lastname.text;
      // Add your login logic here
    }
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
                  Align(alignment: Alignment.topLeft, child: CircleBack()),
                  SizedBox(width: TSizes.md.w),
                  // Center(
                  //   child: CustomImageView(
                  //     height: TSizes.bH + 70,
                  //     imagePath: TImages.registImg,
                  //   ),
                  // ),
                  Text(
                    "Register",
                    style: TextStyle(fontSize: TSizes.lg.sp),
                  ),
                  SizedBox(height: TSizes.md.h),
                  _buildLoginForm(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    final genderDropdownItems = <DropdownMenuItem<String>>[
      DropdownMenuItem(value: "male", child: Text("Male")),
      DropdownMenuItem(value: "female", child: Text("Female")),
    ];
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomTextField(
                  width: TSizes.bsW.w,
                  controller: _firstname,
                  readonly: false,
                  obscureText: false,
                  labelText: "First Name",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(width: TSizes.md.w),
              Expanded(
                child: CustomTextField(
                  width: TSizes.bsW,
                  controller: _lastname,
                  readonly: false,
                  obscureText: true,
                  labelText: "Last Name",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: TSizes.ms.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: CustomDropdown(
                      items: genderDropdownItems,
                      onChanged: (value) {
                        setState(() {
                          _gender.text = value ?? '';
                        });
                      })),
              SizedBox(width: TSizes.md.w),
              Expanded(
                child: CustomTextField(
                  controller: _lastname,
                  readonly: false,
                  obscureText: true,
                  labelText: "DOB",
                  keyboardType: TextInputType.datetime,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your dob';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LabelCheckBox(
                label: "User",
              ),
              LabelCheckBox(
                label: "Doctor",
              ),
            ],
          ),
          SizedBox(height: TSizes.ms.h),
          CustomTextField(
            controller: _email,
            readonly: false,
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            labelText: "Email",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          SizedBox(height: TSizes.ms.h),
          CustomTextField(
            controller: _phone,
            readonly: false,
            obscureText: false,
            keyboardType: TextInputType.phone,
            labelText: "Phone",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone';
              }
              return null;
            },
          ),
          SizedBox(height: TSizes.ms.h),
          CustomTextField(
            controller: _password,
            readonly: false,
            obscureText: true,
            labelText: "Password",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your fpassword';
              }
              return null;
            },
          ),
          SizedBox(height: TSizes.ms.h),
          CustomTextField(
            controller: _confirmpass,
            readonly: false,
            obscureText: false,
            labelText: "Confirm Password",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your confirm password';
              }
              return null;
            },
          ),
          SizedBox(height: TSizes.md.h),
          CustomElevatedButton(text: "Register", onPressed: _login),
          SizedBox(height: TSizes.md.h),
          _footer(context)
        ],
      ),
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
                text: "Login",
                onPressed: () {
                  Get.offNamed("/login_screen");
                })
          ],
        )
      ],
    );
  }
}
