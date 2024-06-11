// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShowToast {
  static void showToast(String content, Color? backColor) {
    Fluttertoast.showToast(
        msg: content,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: backColor ?? Colors.red[200],
        textColor: Colors.black);
  }
}

class InternetToast {
  static void showToast(
    String content,
  ) {
    Fluttertoast.showToast(
        msg: content,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        backgroundColor: Colors.red[100],
        textColor: Colors.black);

    // SnackBar(
    //   backgroundColor: Colors.red,
    //   content: Center(child: Text(content)),
    //   duration: Duration(seconds: 5),
    // );

    // ScaffoldMessenger.of(context).showSnackBar(snackBar as SnackBar);
  }
}

class GreenCustomSnakBar {
  static void showSnackBar(BuildContext context, String content) {
    final snackBar = SnackBar(
      backgroundColor: Colors.green,
      content: Center(child: Text(content)),
      duration: Duration(seconds: 5),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
