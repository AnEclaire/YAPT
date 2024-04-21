import 'package:flutter/material.dart';

class HCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final leftFirstCurve = Offset(0, size.height - 20);
    final leftLastCurve = Offset(30, size.height - 20);
    final middleFirstCurve = Offset(0, size.height - 20);
    final middleLastCurve = Offset(size.width - 30, size.height - 20);
    final rightFirstCurve = Offset(size.width, size.height - 20);
    final rightLastCurve = Offset(size.width, size.height);

    path.quadraticBezierTo(leftFirstCurve.dx, leftFirstCurve.dy, leftLastCurve.dx, leftLastCurve.dy);
    path.quadraticBezierTo(middleFirstCurve.dx, middleFirstCurve.dy, middleLastCurve.dx, middleLastCurve.dy);
    path.quadraticBezierTo(rightFirstCurve.dx, rightFirstCurve.dy, rightLastCurve.dx, rightLastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}