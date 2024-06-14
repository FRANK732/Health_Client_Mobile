import 'package:flutter/material.dart';

class TCurveEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 25);
    final lastCurve = Offset(30, size.height - 25);

    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final secondCurve = Offset(0, size.height - 25);
    final secondLastCurve = Offset(size.width - 30, size.height - 25);

    path.quadraticBezierTo(
        secondCurve.dx, secondCurve.dy, secondLastCurve.dx, secondLastCurve.dy);

    final thirdCurve = Offset(size.width, size.height - 25);
    final thirdLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(
        thirdCurve.dx, thirdCurve.dy, thirdLastCurve.dx, thirdLastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
