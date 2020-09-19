import 'package:flutter/material.dart';

class FancyPaint extends CustomPainter {
  final Color backgroundColor;

  FancyPaint(this.backgroundColor);

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Path sPath = Path();
    Paint paint = Paint();
    paint.color = backgroundColor;
    final double width = size.width;
    final double height = size.height;

    path.moveTo(0, 20);
    path.quadraticBezierTo(width / 10, 10, width / 5, 22);
    path.quadraticBezierTo(width / 3, 35, width / 2, 17);
    path.quadraticBezierTo(width / 1.5, -7, width / 1.2, 0);
    path.quadraticBezierTo(width / 1.2, 0, width, 10);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.lineTo(0, 20);

    sPath.moveTo(0, 10);
    sPath.quadraticBezierTo(width / 10, 0, width / 5, 12);
    sPath.quadraticBezierTo(width / 3, 25, width / 2, 7);
    sPath.quadraticBezierTo(width / 1.5, -17, width / 1.2, -10);
    sPath.quadraticBezierTo(width / 1.2, -11, width, 0);
    sPath.lineTo(width, height);
    sPath.lineTo(0, height);
    sPath.lineTo(0, 20);

    canvas.drawShadow(sPath, backgroundColor, 1.0, false);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
