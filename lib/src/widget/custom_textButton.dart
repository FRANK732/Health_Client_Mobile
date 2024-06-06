import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key, this.alignment, required this.text, required this.onPressed});

  final AlignmentGeometry? alignment;
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.center,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
        ),
      ),
    );
  }
}
