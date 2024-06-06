// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';

class LabelCheckBox extends StatelessWidget {
  LabelCheckBox({super.key, required this.label, this.onChange});

  void Function(bool?)? onChange;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: onChange),
        SizedBox(width: TSizes.ms.w),
        Text(label)
      ],
    );
  }
}
