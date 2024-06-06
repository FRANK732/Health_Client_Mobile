import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_moble_client/core/constant/TColors.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.items,
    required this.onChanged,
    this.value,
    this.hintText,
    this.validator,
    this.labelText,
    this.height,
    this.width,
    this.textColor,
  });

  final List<DropdownMenuItem<String>> items;
  final ValueChanged<String?> onChanged;
  final String? value;
  final String? hintText;
  final FormFieldValidator<String>? validator;
  final String? labelText;
  final double? height;
  final double? width;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? TSizes.bH.h,
      width: width ?? TSizes.bW.w,
      child: DropdownButtonFormField<String>(
        dropdownColor: TColors.transparent,
        value: value,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          filled: true,
        ),
        style: TextStyle(color: textColor ?? Colors.black),
        validator: validator,
        items: items,
        onChanged: onChanged,
      ),
    );
  }
}
