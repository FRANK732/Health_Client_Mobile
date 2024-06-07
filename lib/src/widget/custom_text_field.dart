// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
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
      this.focusNode,
      this.textAlign,
      this.maxLength,
      this.onChange,
      this.onEditingComplete,
      this.inputFormatters,
      this.onTap});

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
  final FocusNode? focusNode;
  final TextAlign? textAlign;
  final int? maxLength;
  void Function(String)? onChange;
  void Function()? onTap;
  void Function()? onEditingComplete;
  List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? TSizes.bH,
      width: width ?? double.infinity,
      child: TextFormField(
        focusNode: focusNode,
        readOnly: readonly,
        autofocus: false,
        controller: controller,
        obscureText: obscureText,
        validator: validator,
        textAlign: textAlign ?? TextAlign.start,
        maxLength: maxLength,
        onChanged: onChange,
        onTap: onTap,
        onEditingComplete: onEditingComplete,
        inputFormatters: inputFormatters,
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
