// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.hintText,
    required this.readonly,
    this.suffixIcon,
    this.validator,
    this.keyboardType,
    this.labelText,
    required this.obscureText,
    this.height,
    this.width,
  });

  final TextEditingController? controller;

  final String? hintText;
  final bool readonly;
  final Widget? suffixIcon;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final String? labelText;
  final bool obscureText;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? TSizes.bH,
      width: width ?? double.infinity,
      child: TextFormField(
        readOnly: readonly,
        autofocus: false,
        controller: controller,
        obscureText: obscureText,
        validator: validator,
        keyboardType: keyboardType ?? TextInputType.text,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(vertical: TSizes.xs),
            child: suffixIcon,
          ),
          labelText: labelText,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
