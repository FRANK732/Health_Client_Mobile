import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';
import 'package:health_moble_client/src/widget/custom_text_field.dart';

class OTPInput extends StatefulWidget {
  final int length;
  final double fieldWidth;
  final double spacing;
  final ValueChanged<String> onCompleted;

  const OTPInput({
    Key? key,
    this.length = 6,
    this.fieldWidth = 40,
    this.spacing = 8,
    required this.onCompleted,
  }) : super(key: key);

  @override
  _OTPInputState createState() => _OTPInputState();
}

class _OTPInputState extends State<OTPInput> {
  late List<TextEditingController> _controllers;
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _controllers =
        List.generate(widget.length, (index) => TextEditingController());
    _focusNodes = List.generate(widget.length, (index) => FocusNode());
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.isNotEmpty) {
      if (index + 1 != _focusNodes.length) {
        FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
      } else {
        _focusNodes[index].unfocus();
        _verifyOTP();
      }
    }
  }

  void _onKeyPress(KeyEvent event, int index) {
    if (event is KeyDownEvent &&
        event.logicalKey == LogicalKeyboardKey.backspace) {
      if (_controllers[index].text.isEmpty && index > 0) {
        _focusNodes[index - 1].requestFocus();
      }
    }
  }

  void _verifyOTP() {
    String otp = _controllers.map((controller) => controller.text).join();
    if (otp.length == widget.length) {
      widget.onCompleted(otp);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(widget.length, (index) {
          return Container(
              width: TSizes.xl2,
              margin: EdgeInsets.symmetric(horizontal: widget.spacing),
              child: TextFormField(
                controller: _controllers[index],
                textAlign: TextAlign.center,
                focusNode: _focusNodes[index],
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(1)
                ],
                onChanged: (val) {
                  _onChanged(val, index);
                },
                onEditingComplete: () {
                  if (index + 1 != _focusNodes.length) {
                    FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
                  }
                },
              ));
        }),
      ),
    );
  }
}
