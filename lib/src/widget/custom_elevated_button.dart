// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:health_moble_client/core/constant/TColors.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final double? textSize;
  final Color? backgroundColor;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.height,
    this.width,
    this.textSize,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? TSizes.bH,
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor ?? TColors.primaryColor),

        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.resolveWith<Color>(
        //         (Set<MaterialState> states) {
        //       if (states.contains(MaterialState.pressed))
        //         return Colors.deepPurple.shade700;
        //       return Colors.deepPurple; // Default color
        //     },
        //   ),
        //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        //     RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(30.0),
        //     ),
        //   ),
        //   elevation: MaterialStateProperty.resolveWith<double>(
        //         (Set<MaterialState> states) {
        //       if (states.contains(MaterialState.pressed)) return 6.0;
        //       return 12.0; // Default elevation
        //     },
        //   ),
        //   shadowColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
        //   overlayColor: MaterialStateProperty.resolveWith<Color>(
        //         (Set<MaterialState> states) {
        //       return states.contains(MaterialState.pressed)
        // ? Colors.transparent
        //           : Colors.deepPurpleAccent.withOpacity(0.1);
        //     },
        //   ),
        // ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: textSize ?? TSizes.md,
              fontWeight: FontWeight.bold,
              color: TColors.white700,
            ),
          ),
        ),
      ),
    );
  }
}
