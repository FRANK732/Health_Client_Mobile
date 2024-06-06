// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';
import 'package:health_moble_client/src/widget/custom_dropdown.dart';
import 'package:health_moble_client/src/widget/custom_elevated_button.dart';
import 'package:health_moble_client/src/widget/custom_textButton.dart';
import 'package:health_moble_client/src/widget/custom_text_field.dart';

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
          child: Padding(
            padding: EdgeInsets.all(TSizes.md.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Register"),
                _buildLoginForm(context),
                SizedBox(height: TSizes.md.h),
                CustomElevatedButton(text: "Register", onPressed: _login),
                SizedBox(height: TSizes.md.h),
                _footer(context)
              ],
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              SizedBox(width: TSizes.ms.w),
              Expanded(
                child: CustomTextField(
                  width: TSizes.bsW,
                  controller: _lastname,
                  readonly: false,
                  obscureText: true,
                  labelText: "DOB",
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
          SizedBox(width: TSizes.ms.w),
          CustomTextField(
            controller: _email,
            readonly: false,
            obscureText: false,
            labelText: "Email",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          SizedBox(width: TSizes.ms.w),
          CustomTextField(
            width: TSizes.bsW.w,
            controller: _phone,
            readonly: false,
            obscureText: false,
            labelText: "Phone",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone';
              }
              return null;
            },
          ),
          SizedBox(width: TSizes.ms.w),
          CustomTextField(
            width: TSizes.bsW.w,
            controller: _password,
            readonly: false,
            obscureText: false,
            labelText: "Password",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your fpassword';
              }
              return null;
            },
          ),
          SizedBox(width: TSizes.ms.w),
          CustomTextField(
            width: TSizes.bsW.w,
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
                  text: "Login",
                  onPressed: () {
                    Get.toNamed("/login_screen");
                  })
            ],
          )
        ],
      ),
    );
  }
}
